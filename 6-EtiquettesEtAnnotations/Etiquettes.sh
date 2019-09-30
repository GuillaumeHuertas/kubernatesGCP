# Création des étiquettes 
# Alpaca-prod
kubectl run alpaca-prod \
--image=gcr.io/kuar-demo/kuard-amd64:1 \
--replicas=2 \
--labels="ver=1,app=alpaca,env=prod"
# Enlever les antislashs sur windows

# Alpaca-test
kubectl run alpaca-test \
--image=gcr.io/kuar-demo/kuard-amd64:1 \
--replicas=1 \
--labels="ver=2,app=alpaca,env=test"

# Bandicoot-prod
kubectl run bandicoot-prod \
--image=gcr.io/kuar-demo/kuard-amd64:1 \
--replicas=2 \
--labels="ver=2,app=bandicoot,env=prod"

# Bandicoot-staging
kubectl run bandicoot-staging \
--image=gcr.io/kuar-demo/kuard-amd64:1 \
--replicas=1 \
--labels="ver=2,app=bandicoot,env=staging"

# Afficher les pods et leurs étiquettes (labels)
kubectl get deployments --show-labels
