echo -e "==========building==========\n"
docker build -t sanu/docker .
echo -e "==========listing images======\n"
docker images
echo -e "=======starting conatiner====\n"
docker run -p 49160:8080 -d sanu/docker
echo -e "=====list running containers=====\n"
docker ps
echo -e "=====test with curl======\n"
curl -i localhost:49160
