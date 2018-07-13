Malabar Footprints Web Site


To deploy Malabar Footprints on Minikube run the following command
cd Deploy && sh ./deploy.sh


#TO connect to container DB
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mlbr-ft-prnts-mysql -p<password>


#TO edit the services configuration file
kubectl edit services mlbr-ft-prnts