$(aws ecr get-login --no-include-email --region ap-south-1)
docker pull 908227405368.dkr.ecr.ap-south-1.amazonaws.com/repo:latest
docker tag 908227405368.dkr.ecr.ap-south-1.amazonaws.com/repo:latest repo:latest
kubectl delete deployments --all
kubectl run repo --image=908227405368.dkr.ecr.ap-south-1.amazonaws.com/repo:latest --port=80 --image-pull-policy=Never
