# Create secret for WordPress
kubectl create secret generic mysql-pass --from-file=password.txt

# Create MySQL deployment
kubectl create -f mlbr-ft-prnts-db-deployment.yaml

# Create WordPress deployment
kubectl create -f mlbr-ft-prnts-wordpress-deployment.yaml
