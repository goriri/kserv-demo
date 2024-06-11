# brew install eksctl
# cat <<EOF > kserve-cluster-config.sh
# apiVersion: eksctl.io/v1alpha5
# kind: ClusterConfig

# metadata:
#   name: kserver-cluster
#   region: us-west-2
#   version: '1.29'
#   tags:
#     karpenter.sh/discovery: kserver-cluster

# iam:
#   withOIDC: true

# karpenter:
#   version: 'v0.36.2' # Exact version must be provided
#   createServiceAccount: true # default is false
#   withSpotInterruptionQueue: true # adds all required policies and rules for supporting Spot Interruption Queue, default is false

# managedNodeGroups:
#   - name: managed-ng-1
#     minSize: 1
#     maxSize: 2
#     desiredCapacity: 1

# EOF
# eksctl create cluster --config-file kserve-cluster-config.yaml
brew install jq
brew install cosign
curl -sSL https://github.com/knative/serving/releases/download/knative-v1.13.1/serving-core.yaml \
  | grep 'gcr.io/' | awk '{print $2}' | sort | uniq \
  | xargs -n 1 \
    cosign verify -o text \
      --certificate-identity=signer@knative-releases.iam.gserviceaccount.com \
      --certificate-oidc-issuer=https://accounts.google.com
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.13.1/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.13.1/serving-core.yaml
curl -sL https://istio.io/downloadIstioctl | sh -\n
export ISTIO_VERSION=1.21
curl -sL https://istio.io/downloadIstioctl | sh -\n
export PATH=$HOME/.istioctl/bin:$PATH 
istioctl install -y
kubectl label namespace knative-serving istio-injection=enabled
# kubectl apply -f knative-serving-peer-auth.yaml
istioctl verify-install
kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.13.1/net-istio.yaml
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.5/cert-manager.yaml
kubectl apply -f https://github.com/kserve/kserve/releases/download/v0.13.0/kserve.yaml
kubectl apply -f https://github.com/kserve/kserve/releases/download/v0.13.0/kserve-cluster-resources.yaml
#Since you are using Knative 1.8, there is a change that it defaults the domain to svc.cluster.local which is not exposed on ingress, if you want to run the curl command outside of the kube cluster you would need to configure the external domain.
kubectl patch cm config-domain --patch '{"data":{"example.com":""}}' -n knative-serving
