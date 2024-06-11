# helm upgrade --install karpenter oci://public.ecr.aws/karpenter/karpenter --version "${KARPENTER_VERSION}" --namespace "${KARPENTER_NAMESPACE}" --create-namespace \
#   --set "settings.clusterName=${CLUSTER_NAME}" \
#   --set "settings.interruptionQueue=${CLUSTER_NAME}" \
#   --set controller.resources.requests.cpu=1 \
#   --set controller.resources.requests.memory=1Gi \
#   --set controller.resources.limits.cpu=1 \
#   --set controller.resources.limits.memory=1Gi \
#   --set "serviceAccount.annotations.eks\.amazonaws\.com/role-arn=${KARPENTER_IAM_ROLE_ARN}" \
#   --wait
# Follow the instruction here to create a cluster with karpenter installed
# https://karpenter.sh/v0.36/getting-started/getting-started-with-karpenter/
kubectl create -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v0.15.0/deployments/static/nvidia-device-plugin.yml

kubectl apply -f karpenter-cpu-nodepool.yaml
kubectl apply -f karpenter-gpu-nodepool.yaml


# add tag kubernetes.io/cluster/shijunx-karpenter-demo=owned to ClusterSharedNodeSecurityGroup to create load balancer
