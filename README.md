# terraform-gke-helm
Terraform configuration for spinning up a GKE cluster with helm 

1. Fill the *terraform.tfvars* with your own variables

2. Log in to gcloud cli and set the default project which you have previously created on GCP Dashboard
```
gcloud auth application-default login
export GOOGLE_PROJECT=$(gcloud config get-value project)
```

3. After terraform apply: point your kubeconfig file to the recently created gke cluster
```
gcloud container clusters get-credentials $(terraform output cluster_name) --zone $(terraform output cluster_zone)
```

4. Install helm
```
kubectl get pods -n dev

helm init --upgrade
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```
