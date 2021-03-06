# Default values for cockroachdb.
# This is a JSON-formatted file.
# Declare name/value pairs to be passed into your templates.
# name: value

{
  Name: "cockroachdb",
  Image: "cockroachdb/cockroach",
  ImageTag: "latest", # Keep at latest until 1.0, then switch to a specific version
  ImagePullPolicy: "Always",
  BootstrapImage: "cockroachdb/cockroach-k8s-init",
  BootstrapImageTag: "0.1",
  Replicas: 3,
  MinAvailable: "67%",
  Component: "cockroachdb",
  GrpcPort: 26257,
  HttpPort: 8080,
  Resources: {
    requests: {
      cpu: "100m",
      memory: "512Mi",
    },
  },
  Storage: "1Gi",
  StorageClass: "anything",
}
