echo "Starting to deploy docker image.."
DOCKER_IMAGE=553397529585.dkr.ecr.us-east-1.amazonaws.com/prashant_course_assignment:latest
docker system prune
docker pull $DOCKER_IMAGE
docker rm -f prashant
docker run -itd -p 8080:8081 --name=prashant $DOCKER_IMAGE
