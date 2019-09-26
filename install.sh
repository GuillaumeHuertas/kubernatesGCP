// Installation du kubectl sur le poste de travail pour controler le cluster 

// Il faut un compte GCP (gratuit pour le moment ça fonctionne)

// Créer un Projet dans Kubernates Engine

// Créer un Cluster 

// Cliquer sur la ligne se connecter dans le terminal
gcloud container clusters get-credentials standard-cluster-1 --zone us-central1-a --project x-alcove-00000
// Vérifier les noeuds 
kubectl get nodes
// Réponse
NAME                                                STATUS   ROLES    AGE     VERSION
gke-standard-cluster-1-default-pool-c2ffb374-fcrg   Ready    <none>   4m13s   v1.13.7-gke.8
gke-standard-cluster-1-default-pool-c2ffb374-h9dn   Ready    <none>   4m14s   v1.13.7-gke.8
gke-standard-cluster-1-default-pool-c2ffb374-wblv   Ready    <none>   4m13s   v1.13.7-gke.8
