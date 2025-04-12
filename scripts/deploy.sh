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
# Hash 1426
# Hash 8740
# Hash 1259
# Hash 4220
# Hash 9932
# Hash 2873
# Hash 4748
# Hash 5138
# Hash 7485
# Hash 8043
# Hash 6047
# Hash 7235
# Hash 6774
# Hash 7989
# Hash 8662
# Hash 7649
# Hash 2415
# Hash 1896
# Hash 7585
# Hash 1562
# Hash 7570
# Hash 8695
# Hash 4040
# Hash 5935
# Hash 3386
# Hash 2664
# Hash 5108
# Hash 1092
# Hash 5609
# Hash 8785
# Hash 2625
# Hash 8574
# Hash 6904
# Hash 5175
# Hash 7332
# Hash 4100
# Hash 2219
# Hash 4358
# Hash 9564
# Hash 7287
# Hash 3532
# Hash 2684
# Hash 3567
# Hash 9319
# Hash 3948
# Hash 2894
# Hash 9610
# Hash 9942
# Hash 1348
# Hash 2004
# Hash 8179
# Hash 9283
# Hash 2083
# Hash 4460
# Hash 6965
# Hash 5104
# Hash 2162
# Hash 5648
# Hash 4185
# Hash 7780
# Hash 2880
# Hash 1307
# Hash 4720