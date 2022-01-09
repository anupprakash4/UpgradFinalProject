echo "Starting to deploy docker image.."
DOCKER_IMAGE=553397529585.dkr.ecr.us-east-1.amazonaws.com/prashant_course_assignment:latest
docker pull $DOCKER_IMAGE
a=`docker ps | wc -l`; if [ $a != 1 ];then docker rm -f prashant;fi
docker rm -f prashant
docker run -itd -p 8080:8081 --name=prashant $DOCKER_IMAGE
