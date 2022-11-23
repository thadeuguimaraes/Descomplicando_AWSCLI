AWS_CONFIG_ENV=./credenciais_docker
docker build -f Dockerfile_awscli -t automacao-awscli .
docker run --rm --env-file=$AWS_CONFIG_ENV -v -ti automacao-awscli