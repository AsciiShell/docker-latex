# docker-latex
Build your latex document in a docker. Include ru fonts, graphviz and python3 

Docker Pull Command:
```bash
docker pull asciishell/docker-latex
```

Run command:
```bash
docker run -u root --rm  -it -v $(pwd):/source asciishell/docker-latex:latest bash ./build.sh
```

See more:
https://hub.docker.com/r/asciishell/docker-latex