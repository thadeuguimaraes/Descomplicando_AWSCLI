var index = require('./src/index.js');

lambda = index.handler;

let event={"key1":"Primeiro callback", "key2": "Segundo callback"};
lambda(event, null, function(result, retorno){
    // console.log(result);
    // console.log(retorno);
})