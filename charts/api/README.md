# Galileo Helm Chart for API

## Installation

```bash
helm dependency update ./charts/api
helm install api ./charts/api --namespace galileo --create-namespace
```

## Updates

```bash
helm dependency update ./charts/api
helm upgrade api ./charts/api --namespace galileo
```
