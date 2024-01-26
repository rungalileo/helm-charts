# Galileo Helm Chart for Runners

## Installation

```bash
helm dependency update ./charts/runners
helm install runners ./charts/runners --namespace galileo --create-namespace
```

## Updates

```bash
helm upgrade runners ./charts/runners --namespace galileo
```
