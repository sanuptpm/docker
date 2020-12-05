img_name="sanu/docker"
cont_id=$(docker ps | grep $img_name | awk '{print $1}')
echo "cont_id--- $cont_id"
docker exec -it $cont_id /bin/bash
