# Galileo Helm Chart

## Installation

```bash
helm dependency update ./charts/galileo
helm install galileo ./charts/galileo --namespace galileo --create-namespace
```

## Updates

```bash
helm upgrade galileo ./charts/galileo --namespace galileo
```

## Setting up a Local Cluster with k3d

To set up a local Kubernetes cluster suitable for the Galileo Helm chart, you can use k3d, which is a lightweight wrapper around k3s running in Docker. This setup is ideal for development and testing purposes.

### Prerequisites

- Docker installed and running on your machine.
- k3d installed. If you don't have k3d installed, you can install it by following the instructions on the k3d GitHub page.

### Creating the Cluster

1. Open your terminal.

2. Execute the following command to create a new k3d cluster named galileo-local. This command sets up a cluster with 3 agent nodes. It also labels the first agent node as galileo-core and the second agent node as galileo-runner, which can be useful for specific deployments that target these labels. Additionally, it maps ports 80 and 443 from the load balancer to your local machine, allowing you to access services deployed in the cluster via these common HTTP and HTTPS ports.

```bash

    k3d cluster create galileo-local \
    --agents 3 \
    --k3s-arg "--node-label=galileo-node-type=galileo-core@agent:0" \
    --k3s-arg "--node-label=galileo-node-type=galileo-runner@agent:1" \
    --port "80:80@loadbalancer" \
    --port "443:443@loadbalancer"
```

Wait for the command to complete. This may take a few minutes as k3d pulls the necessary Docker images and initializes the cluster nodes.

### Verifying the Cluster

To ensure your k3d cluster is up and running, you can use the following command:

```bash
kubectl cluster-info
```

This command should return information about the Kubernetes master and other services running in your cluster, indicating that it's ready for use.
Next Steps

Once your local cluster is set up, you can proceed with installing the Galileo Helm chart into this cluster by following the installation instructions above.