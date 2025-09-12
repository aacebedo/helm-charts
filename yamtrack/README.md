# yamtrack

A Helm chart for yamtrack

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
# Standard Helm install
$ helm install  my-release yamtrack

# To use a custom namespace and force the creation of the namespace
$ helm install my-release --namespace my-namespace --create-namespace yamtrack

# To use a custom values file
$ helm install my-release -f my-values.yaml yamtrack
```

See the [Helm documentation](https://helm.sh/docs/intro/using_helm/) for more information on installing and managing the chart.

## Configuration

The following table lists the configurable parameters of the yamtrack chart and their default values.

| Parameter                                     | Default                      |
| --------------------------------------------- | ---------------------------- |
| `redis.imagePullPolicy`                       | `IfNotPresent`               |
| `redis.replicas`                              | `1`                          |
| `redis.repository.image`                      | `redis`                      |
| `redis.repository.tag`                        | `7-alpine`                   |
| `redis.serviceAccount`                        | ``                           |
| `yamtrack.imagePullPolicy`                    | `IfNotPresent`               |
| `yamtrack.ingress.class`                      | `-`                          |
| `yamtrack.ingress.enabled`                    | `false`                      |
| `yamtrack.ingress.host`                       | `yamtrack.acebedo.fr`        |
| `yamtrack.ingress.path`                       | `/`                          |
| `yamtrack.ingress.tls.enabled`                | `true`                       |
| `yamtrack.ingress.tls.secretName`             | ``                           |
| `yamtrack.persistence.db.accessMode[0].value` | `ReadWriteOnce`              |
| `yamtrack.persistence.db.enabled`             | `true`                       |
| `yamtrack.persistence.db.size`                | `1Gi`                        |
| `yamtrack.persistence.db.storageClass`        | `-`                          |
| `yamtrack.replicas`                           | `1`                          |
| `yamtrack.repository.image`                   | `ghcr.io/fuzzygrim/yamtrack` |
| `yamtrack.repository.tag`                     | ``                           |
| `yamtrack.serviceAccount`                     | ``                           |


