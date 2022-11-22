VERSAO=$1
AWS_CONFIG_ENV=./credenciais_docker
diretorio_deploy="src-$VERSAO"
echo "Fazendo deploy da versao $VERSAO em $diretorio_deploy." 

docker build -f fontes/DOckerfile_deploy_lambda --build-arg versao=$VERSAO -t deploy-lambda .

docker run --rm -ti --env-file=$AWS_CONFIG_ENV -e VERSAO=$VERSAO deploy-lambda



