kubectl delete deployment,service -l app=mlbr-ft-prnts
kubectl delete secret mysql-pass
kubectl delete pvc -l app=mlbr-ft-prnts
kubectl delete pv local-pv-1 local-pv-2
#kubectl delete namespace mlbr-ft-prnts