# Galileo Helm Chart for Comet

## Installation

```bash
helm dependency update ./charts/comet
helm install comet ./charts/comet --namespace galileo --create-namespace
```

## Updates

```bash
helm upgrade comet ./charts/comet --namespace galileo
```
