kubectl delete deployment,service -l app=wordpress
kubectl delete secret mysql-pass
kubectl delete pvc -l app=wordpress
