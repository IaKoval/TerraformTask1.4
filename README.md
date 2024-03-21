# Concourse task 
At first you needed to [install docker](https://docs.docker.com/get-docker/) 

Then follow the [concourse documentation](https://concourse-ci.org/quick-start.html)

After fly and Concourse running somewhere in docker are installed you need run these command: 
```
fly --target tutorial login --team-name my-team \
    --concourse-url http://localhost:8080 
$ fly -t tutorial set-pipeline -p hello-world -c hello-world.yml
$ fly -t tutorial unpause-pipeline -p hello-world
$ fly -t tutorial trigger-job --job hello-world/hello-world-job --watch
```
