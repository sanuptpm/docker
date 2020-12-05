for x in $(docker images -q)
do
docker rmi $x
done


docker images

