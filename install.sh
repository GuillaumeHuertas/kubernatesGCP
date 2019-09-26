// Installation du kubectl sur le poste de travail pour controler le cluster 

// Il faut un compte GCP (gratuit pour le moment ça fonctionne)

// Créer un Projet dans Kubernates Engine

// Créer un Cluster 

// Cliquer sur la ligne se connecter dans le terminal
gcloud container clusters get-credentials standard-cluster-1 --zone us-central1-a --project x-alcove-00000

// Changer la région 
gcloud config set compute/zone europe-west1

// Vérifier la version du serveur et du client
kubectl version
// Réponse
Client Version: version.Info{Major:"1", Minor:"14", GitVersion:"v1.14.6", GitCommit:"96fac5cd13a5dc064f7d9f4f23030a6aeface6cc", GitTreeState:"clean", BuildDate:"2019-08-19T11:13:49Z", GoVersion:"go1.12.9", Compiler:"gc", Platform:"windows/amd64"}
Server Version: version.Info{Major:"1", Minor:"13+", GitVersion:"v1.13.7-gke.8", GitCommit:"7d3d6f113e933ed1b44b78dff4baf649258415e5", GitTreeState:"clean", BuildDate:"2019-06-19T16:37:16Z", GoVersion:"go1.11.5b4", Compiler:"gc", Platform:"linux/amd64"}

// Diagnostique du cluster
kubectl get componentstatus
// Réponse 
NAME                 STATUS    MESSAGE              ERROR
scheduler            Healthy   ok
etcd-1               Healthy   {"health": "true"}
controller-manager   Healthy   ok
etcd-0               Healthy   {"health": "true"}

// Vérifier les noeuds 
kubectl get nodes
// Réponse
NAME                                                STATUS   ROLES    AGE     VERSION
gke-standard-cluster-1-default-pool-c2ffb374-fcrg   Ready    <none>   4m13s   v1.13.7-gke.8
gke-standard-cluster-1-default-pool-c2ffb374-h9dn   Ready    <none>   4m14s   v1.13.7-gke.8
gke-standard-cluster-1-default-pool-c2ffb374-wblv   Ready    <none>   4m13s   v1.13.7-gke.8

// Pour obtenir plus d'information sur un noeud, il suffit d'entrer la commande suivante avec l'ID du noeud que vous vouler inspeter 
kubectl describe nodes gke-standard-cluster-1-default-pool-c2ffb374-fcrg
// Voir exempleKubectlDescribe
// Cette commande renvoit ne multitude d'information comme par exemple l'OS (Linux), l'espace disque, 
//les capacités de la machine (CPU, Memoire, Pods), les logiciels exécutés sur les noeuds, leurs versions, 
// et sur les pods en cours d'éxécutions. 

