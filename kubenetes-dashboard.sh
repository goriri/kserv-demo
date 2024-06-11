# Add kubernetes-dashboard repository
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
# Deploy a Helm Release named "kubernetes-dashboard" using the kubernetes-dashboard chart
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard

kubectl create serviceaccount dashboard-admin-sa
kubectl create clusterrolebinding dashboard-admin-sa --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin-sa
kubectl apply -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: dashboard-admin-sa-secret
  annotations:
    kubernetes.io/service-account.name: dashboard-admin-sa
type: kubernetes.io/service-account-token
EOF
kubectl describe secret dashboard-admin-sa-secret
#paste the secret into the dashboard login
#proxy the service
#kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443
#open in your browser
#https://localhost:8443

#kubectl edit svc/kubernetes-dashboard-kong-proxy -n kubernetes-dashboard
#ClusterIP => LoadBalancer