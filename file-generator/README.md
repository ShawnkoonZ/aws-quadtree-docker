# aws-quadtree-docker
Docker implementation for each quadtree instances.

To run the script
- Add Executble permision to the script then just run ./docker_rm_all.sh

**WARNING :**
**Script will remove ALL the containers & Images**

# Execution


------------------------

Use :
> `$ docker-compose build` 

To run dockerfile with defined name.
- Currently just adds name to the image.
- Will include more in the future.

-------------------------

Use :
> `$ docker run --name file_gen_container -it shawnkoonz/file_gen:v1 bash` 

To ssh?(logIn) into the container of img just created.

-------------------------

Use :
> `$ docker inspect shawnkoonz/file_gen:v1` 

To view image detail.

# Good reading sources.
https://github.com/moby/moby/pull/25466

https://docs.docker.com/engine/reference/builder/#label

https://github.com/moby/moby/issues/16058

https://techoverflow.net/2013/10/22/docker-remove-all-images-and-containers/

https://askubuntu.com/questions/38661/how-do-i-run-sh-files

http://stackoverflow.com/questions/38986057/how-to-set-image-name-in-dockerfile

https://docs.docker.com/compose/compose-file/compose-file-v2/

https://docs.docker.com/compose/compose-file/compose-versioning/#version-2

http://stackoverflow.com/questions/38986057/how-to-set-image-name-in-dockerfile