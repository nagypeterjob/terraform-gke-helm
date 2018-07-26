# terraform-gke-helm
Terraform configuration for spinning up a GKE cluster with helm 

1.
```gcloud auth application-default login
export GOOGLE_PROJECT=$(gcloud config get-value project)```

2.```
gcloud container clusters get-credentials $(terraform output cluster_name) --zone $(terraform output cluster_zone)
```

3.```
kubectl get pods -n dev

kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```