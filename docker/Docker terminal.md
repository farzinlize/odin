# docker-run 

- --name \<name> : assign a name to container
- -e or --env : envirment variables
	- example -> `$ docker run -e FOLAN=bahman container`
- --detach or -d : means that a Docker container runs in the background of your terminal

# docker-container
- ls : list containers (equal to `$ docker ps`)

# docker-inspect
- quick IP check:
```
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container_name_or_id>
```

# docker-exec
- execute command in container
- root user command -> `docker exec -u 0`