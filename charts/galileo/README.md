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
