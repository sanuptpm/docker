

echo "=====stop and delete all contaners======\n"
for x in $(docker ps -a -q)
do
echo "---deleting---$x\n"
docker stop $x
docker rm $x
done

echo "=====remove all images===\n"
for x in $(docker images -q)
do
echo "-----deleting---$x\n"
docker rmi $x
done


docker images

