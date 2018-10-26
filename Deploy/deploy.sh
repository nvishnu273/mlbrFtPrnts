#Pull an image from docker hub to registry
#docker pull wordpress:4.8-apache
#docker pull mysql

#Tag the image
#docker tag wordpress:4.8-apache localhost:5000/wordpress-4.8
#docker tag mysql:5.6 localhost:5000/my-base-mysql-5.6

#Push the image to the local registry running at localhost:5000:
#docker push localhost:5000/wordpress-4.8
#docker push localhost:5000/my-base-mysql-5.6

# Remove the locally cached images (wordpress:4.8-apache and localhost:5000/wordpress:4.8-apache)
#docker image remove wordpress:4.9.7-apache
#docker image remove wordpress:4.8-apache
#docker image remove localhost:5000/wordpress:4.8-apache

#docker image remove mysql:latest
#docker image remove mysql:5.6
#docker image remove mysql:5.7
#docker image remove mysql:8.0.11
#docker image remove localhost:5000/my-base-mysql-5.6

# Pull images
#docker pull localhost:5000/wordpress-4.8
#docker pull localhost:5000/my-base-mysql-5.6

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
