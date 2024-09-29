#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 9658
# Hash 7112
# Hash 2307
# Hash 3714
# Hash 9498
# Hash 4788
# Hash 8539
# Hash 5280
# Hash 7239
# Hash 7529
# Hash 1830
# Hash 9951
# Hash 9310
# Hash 7753
# Hash 8616
# Hash 7599
# Hash 6549
# Hash 7950
# Hash 5500
# Hash 1614
# Hash 2995
# Hash 7675
# Hash 1094
# Hash 3559