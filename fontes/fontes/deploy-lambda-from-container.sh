VERSAO=$1


diretorio_deploy="src-$VERSAO"
echo $diretorio_deploy

echo ">>DEPLOY DA FUNCAO PARA $VERSAO"

mkdir $diretorio_deploy

echo ">>Copiar arquivos para pasta que sera gerado zip"
cp -r src/ $diretorio_deploy/
cp -r package.json $diretorio_deploy/

echo ">>Restaurante pacotes NPM"
cd $diretorio_deploy
npm install --production

echo ">>Gerando zip de distribuicao"
zip -r ../src.zip src
zip -r ../src.zip package.json
zip -r ../src.zip node_modules
cp ../src.zip src-$VERSAO.zip

pwd -P