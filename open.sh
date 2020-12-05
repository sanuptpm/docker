img_id=$(docker image list | grep "sanu/docker" | awk '{print $3}')
cont_id=$(docker ps | grep $img_id | awk '{print $1}')
docker exec -it $cont_id /bin/bash
