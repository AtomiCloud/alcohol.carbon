#!/usr/bin/env bash

set -euo pipefail

# Reject non-release invocations before reading credentials, changing files, or registry access.
version="${2:-}"
if [[ ${GITHUB_EVENT_NAME:-} != push || ${GITHUB_REF:-} != refs/tags/v*.*.* || -z $version || $version != "${GITHUB_REF_NAME:-}" || ${GITHUB_REF:-} != "refs/tags/$version" ]]; then
  echo '❌ Publishing requires a tag push and a nonempty release version matching the tag' >&2
  exit 1
fi

chart_path="${1:?Chart path required}"
: "${DOMAIN:?DOMAIN env var not set}"
: "${DOCKER_PASSWORD:?DOCKER_PASSWORD env var not set}"
: "${DOCKER_USER:?DOCKER_USER env var not set}"
: "${GITHUB_REPO_REF:?GITHUB_REPO_REF env var not set}"
HELM_VERSION="$version"
IMAGE_VERSION="$version"

echo "📝 Generating Image tags..."
echo "📝 Helm version: ${HELM_VERSION}"
echo "📝 Image version: ${IMAGE_VERSION}"

echo "📝 Updating Chart.yaml..."

find . -name "Chart.yaml" | while read -r file; do
  echo "📝 Updating AppVersion: $file"
  yq eval ".appVersion = \"${IMAGE_VERSION}\"" "$file" >"${file}.tmp"
  mv "${file}.tmp" "$file"
  echo "✅ Updated AppVersion: $file"
done

echo "✅ Updated Chart.yaml"

onExit() {
  rc="$?"
  rm -rf ./uploads
  if [ "$rc" = '0' ]; then
    echo "✅ Successfully published helm chart"
  else
    echo "❌ Failed to publish helm chart"
  fi
}
trap onExit EXIT

cd "${chart_path}" || exit

# login to registry
echo "🔐 Logging into docker registry..."
echo "${DOCKER_PASSWORD}" | helm registry login "${DOMAIN}" -u "${DOCKER_USER}" --password-stdin

# packaging helm chart
echo "📦 Packaging helm chart..."
helm dependency build
helm package . -u --version "${HELM_VERSION}" --app-version "${IMAGE_VERSION}" -d ./uploads

# push helm chart
echo "📤 Pushing helm chart..."
for filename in ./uploads/*.tgz; do
  OCI_REF="$(echo "oci://${DOMAIN}/${GITHUB_REPO_REF}" | tr '[:upper:]' '[:lower:]')"
  echo "📤 Pushing ${filename} to ${OCI_REF}"
  helm push "$filename" "${OCI_REF}"
done
