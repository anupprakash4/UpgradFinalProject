echo "Starting to deploy docker image.."
DOCKER_IMAGE=553397529585.dkr.ecr.us-east-1.amazonaws.com/prashant_course_assignment:latest
docker pull $DOCKER_IMAGE
docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs -r docker stop
docker run -itd -p 8080:8081 $DOCKER_IMAGE
