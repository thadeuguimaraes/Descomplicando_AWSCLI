AWS_CONFIG_ENV=./credenciais_docker
docker build -f Dockerfile_awscli -t automacao-awscli .
docker run --rm --env-file=$AWS_CONFIG_ENV -v "//d//Videos//OregonEAD//Cursos//Curso Automação na nuvem usando AWS CLI//fontes//backup://tmp/backup" -ti automacao-awscli