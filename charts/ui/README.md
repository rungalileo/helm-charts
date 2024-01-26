# Galileo Helm Chart for UI

## Installation

```bash
helm dependency update ./charts/ui
helm install ui ./charts/ui --namespace galileo --create-namespace
```

## Updates

```bash
helm upgrade ui ./charts/ui --namespace galileo
```
