kubectl delete deploy drupal
kubectl delete deploy drupal-mysql
kubectl delete pvc drupal-pvc
kubectl delete pvc drupal-mysql-pvc
kubectl delete pv drupal-pv
kubectl delete pv drupal-mysql-pv
kubectl delete secret drupal-mysql-secret

kubectl create secret generic drupal-mysql-secret --from-literal=MYSQL_ROOT_PASSWORD=root_password --from-literal=MYSQL_DATABASE=drupal-database --from-literal=MYSQL_USER=root
kubectl apply -f drupal-pv.yaml
kubectl apply -f drupal-pvc.yaml
kubectl apply -f drupal-mysql-pv.yaml
kubectl apply -f drupal-mysql-pvc.yaml
kubectl apply -f drupal.yaml
kubectl apply -f drupal-mysql.yaml

kubectl get all

