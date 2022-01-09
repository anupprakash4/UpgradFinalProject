echo "Starting to deploy docker image.."
DOCKER_IMAGE=597824617530.dkr.ecr.us-east-1.amazonaws.com/anoop-favorite-ecr:latest
sudo docker system prune
sudo docker pull $DOCKER_IMAGE
sudo docker rm -f Anoop
sudo docker run -itd -p 8080:8081 --name=Anoop $DOCKER_IMAGE
