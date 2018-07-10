kubectl delete deployment,service -l app=mlbrFtPrnts
kubectl delete secret mysql-pass
kubectl delete pvc -l app=mlbrFtPrnts
kubectl delete pv local-pv-1 local-pv-2