#k8s tutorial

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-0.32.0/deploy/static/provider/cloud/deploy.yaml


docker build --pull --rm -f "Dockerfile" -t tutorial:latest .

docker push srinivasarajui/tutorial:latest
