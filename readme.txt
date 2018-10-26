Malabar Footprints Web Site

#minikube start

# we'll always have to start minikube with the `--insecure-registry` option
minikube start --vm-driver=virtualbox --insecure-registry=localhost:5000

# this will make the local `docker` command use the minikube vm as docker host
# thus all commands starting with `docker` will affect the minikube vm not the host computer

eval $(minikube docker-env)


# If local registry is not running
docker run -d -p 5000:5000 --restart=always --name registry   -v /data/docker-registry:/var/lib/registry registry:2

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

#To deploy Malabar Footprints on Minikube run the following command
cd Deploy && sh ./deploy.sh


minikube service mlbr-ft-prnts --url

sudo minikube dashboard

kubectl logs <pod_name>