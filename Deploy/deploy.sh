# Create namespace
#kubectl create -f mlbr-ft-prnts-namespace.yaml

# Create local volumes for MySQL
kubectl create -f local-volumes.yaml

# Create secret for WordPress
kubectl create secret generic mysql-pass --from-file=password.txt

# Create MySQL deployment
kubectl create -f ./db-deployment.yaml

# Create WordPress deployment
kubectl create -f ./mlbr-ft-prnts-deployment.yaml
