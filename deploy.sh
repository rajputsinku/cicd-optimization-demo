#!/bin/bash
echo "Deploying latest image..."
helm upgrade cicd-demo ./cicd-demo-chart \
  --namespace cicd-demo \
  --install \
  --set image.repository=ghcr.io/<your-github-username>/cicd-demo \
  --set image.tag=$(git rev-parse HEAD)
echo "Done. Checking pods..."
kubectl get pods -n cicd-demo