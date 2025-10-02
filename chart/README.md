# alcohol-carbon

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

Root Chart for Project Alcohol

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/atomicloud/alcohol.zinc | zinc(root-chart) | v1.5.0 |
| oci://ghcr.io/atomicloud/aldehyde.lithium | lithium(aldehyde-lithium) | v1.1.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| lithium.adminIngress.enabled | bool | `false` |  |
| lithium.app.adminEndpoint | string | `"https://admin.lithium.alcohol.lapras.atomi.cloud"` |  |
| lithium.app.endpoint | string | `"https://api.lithium.alcohol.lapras.cluster.atomi.cloud"` |  |
| lithium.app.trustProxyHeader | int | `1` |  |
| lithium.autoscaling.enabled | bool | `false` |  |
| lithium.autoscaling.maxReplicas | int | `100` |  |
| lithium.autoscaling.minReplicas | int | `1` |  |
| lithium.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| lithium.bromine.enable | bool | `true` |  |
| lithium.bromine.rootSecret.ref.clientId | string | `"ALCOHOL_LITHIUM_CLIENT_ID"` |  |
| lithium.bromine.rootSecret.ref.clientSecret | string | `"ALCOHOL_LITHIUM_CLIENT_SECRET"` |  |
| lithium.bromine.serviceTree.<<.layer | string | `"2"` |  |
| lithium.bromine.serviceTree.<<.platform | string | `"alcohol"` |  |
| lithium.fullnameOverride | string | `"lithium-api"` |  |
| lithium.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"entei-zinc-letsencrypt-issuer"` |  |
| lithium.ingress.className | string | `"nginx"` |  |
| lithium.ingress.enabled | bool | `true` |  |
| lithium.ingress.hosts[0].host | string | `"api.lithium.alcohol.lapras.cluster.atomi.cloud"` |  |
| lithium.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| lithium.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| lithium.ingress.tls[0].hosts[0] | string | `"api.lithium.alcohol.lapras.cluster.atomi.cloud"` |  |
| lithium.ingress.tls[0].secretName | string | `"api-lithium-alcohol-lapras-tls"` |  |
| lithium.maincache.fullnameOverride | string | `"lithium-maincache"` |  |
| lithium.maincache.resources.limits.cpu | string | `"250m"` |  |
| lithium.maincache.resources.limits.memory | string | `"512Mi"` |  |
| lithium.maincache.resources.requests.cpu | string | `"100m"` |  |
| lithium.maincache.resources.requests.memory | string | `"256Mi"` |  |
| lithium.maincache.storage.enabled | bool | `false` |  |
| lithium.replicaCount | int | `2` |  |
| lithium.resources.limits.cpu | int | `1` |  |
| lithium.resources.limits.memory | string | `"1Gi"` |  |
| lithium.resources.requests.cpu | string | `"250m"` |  |
| lithium.resources.requests.memory | string | `"256Mi"` |  |
| lithium.serviceTree.<<.layer | string | `"2"` |  |
| lithium.serviceTree.<<.platform | string | `"alcohol"` |  |
| lithium.tags.<<."atomi.cloud/layer" | string | `"2"` |  |
| lithium.tags.<<."atomi.cloud/platform" | string | `"alcohol"` |  |
| serviceTree.layer | string | `"2"` |  |
| serviceTree.platform | string | `"alcohol"` |  |
| tags."atomi.cloud/layer" | string | `"2"` |  |
| tags."atomi.cloud/platform" | string | `"alcohol"` |  |
| zinc.api.configMountPath | string | `"/app/Config"` |  |
| zinc.api.enabled | bool | `true` |  |
| zinc.api.envFromSecret | string | `"zinc"` |  |
| zinc.api.fullnameOverride | string | `"zinc-api"` |  |
| zinc.api.image.repository | string | `"ghcr.io/atomicloud/alcohol.zinc/api"` |  |
| zinc.api.imagePullSecrets | list | `[]` |  |
| zinc.api.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"entei-zinc-letsencrypt-issuer"` |  |
| zinc.api.ingress.className | string | `"nginx"` |  |
| zinc.api.ingress.enabled | bool | `true` |  |
| zinc.api.ingress.hosts[0].host | string | `"api.zinc.alcohol.lapras.cluster.atomi.cloud"` |  |
| zinc.api.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| zinc.api.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| zinc.api.ingress.tls[0].hosts[0] | string | `"api.zinc.alcohol.lapras.cluster.atomi.cloud"` |  |
| zinc.api.ingress.tls[0].secretName | string | `"api-zinc-alcohol-lapras-tls"` |  |
| zinc.api.podSecurityContext.fsGroup | int | `1000` |  |
| zinc.api.podSecurityContext.runAsGroup | int | `1000` |  |
| zinc.api.podSecurityContext.runAsNonRoot | bool | `true` |  |
| zinc.api.podSecurityContext.runAsUser | int | `1000` |  |
| zinc.api.replicaCount | int | `1` |  |
| zinc.api.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| zinc.api.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| zinc.api.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| zinc.api.securityContext.runAsGroup | int | `1000` |  |
| zinc.api.securityContext.runAsNonRoot | bool | `true` |  |
| zinc.api.securityContext.runAsUser | int | `1000` |  |
| zinc.api.service.containerPort | int | `9050` |  |
| zinc.api.service.port | int | `80` |  |
| zinc.api.service.type | string | `"ClusterIP"` |  |
| zinc.api.serviceTree.<<.layer | string | `"2"` |  |
| zinc.api.serviceTree.<<.platform | string | `"alcohol"` |  |
| zinc.bromine.enable | bool | `true` |  |
| zinc.bromine.serviceTree.<<.layer | string | `"2"` |  |
| zinc.bromine.serviceTree.<<.platform | string | `"alcohol"` |  |
| zinc.bromine.target | string | `"zinc"` |  |
| zinc.maincache.enable | bool | `false` |  |
| zinc.maindb.enable | bool | `false` |  |
| zinc.mainstorage.enable | bool | `false` |  |
| zinc.migration.configMountPath | string | `"/app/Config"` |  |
| zinc.migration.enabled | bool | `true` |  |
| zinc.migration.envFromSecret | string | `"zinc"` |  |
| zinc.migration.fullnameOverride | string | `"zinc-migration"` |  |
| zinc.migration.image.repository | string | `"ghcr.io/atomicloud/alcohol.zinc/migrate"` |  |
| zinc.migration.podSecurityContext.fsGroup | int | `1000` |  |
| zinc.migration.podSecurityContext.runAsGroup | int | `1000` |  |
| zinc.migration.podSecurityContext.runAsNonRoot | bool | `true` |  |
| zinc.migration.podSecurityContext.runAsUser | int | `1000` |  |
| zinc.migration.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| zinc.migration.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| zinc.migration.securityContext.readOnlyRootFilesystem | bool | `false` |  |
| zinc.migration.securityContext.runAsGroup | int | `1000` |  |
| zinc.migration.securityContext.runAsNonRoot | bool | `true` |  |
| zinc.migration.securityContext.runAsUser | int | `1000` |  |
| zinc.migration.serviceTree.<<.layer | string | `"2"` |  |
| zinc.migration.serviceTree.<<.platform | string | `"alcohol"` |  |
| zinc.podSecurityContext | object | `{"fsGroup":1000,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | YAML Anchor for PodSecurityContext |
| zinc.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | YAML Anchor for SecurityContext |
| zinc.serviceTree.<<.layer | string | `"2"` |  |
| zinc.serviceTree.<<.platform | string | `"alcohol"` |  |
| zinc.xSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| zinc.xSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| zinc.xSecurityContext.readOnlyRootFilesystem | bool | `false` |  |
| zinc.xSecurityContext.runAsGroup | int | `1000` |  |
| zinc.xSecurityContext.runAsNonRoot | bool | `true` |  |
| zinc.xSecurityContext.runAsUser | int | `1000` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
