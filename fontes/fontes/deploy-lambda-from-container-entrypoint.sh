#!/bin/sh

echo $VERSAO
ls
echo ">>Realizando upload da funcao para s3://lambda-automacaos-aws-cli/src-$VERSAO.zip "
aws s3 cp ../src.zip s3://lambda-automacaos-aws-cli/src-$VERSAO.zip

echo ">>Vinculando arquivo S3 com funcao para "processar-video-oregon-$VERSAO""
aws lambda update-function-code --function-name "automacao-aws-cli" --s3-bucket "lambda-automacaos-aws-cli" --s3-key "src-$VERSAO.zip"

echo ">>>> Deploy finalizado com sucesso VERSAO:$VERSAO <<<<<<"
