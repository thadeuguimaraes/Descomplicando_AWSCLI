var async = require('async');


exports.handler = (event,context,callback)=>{
    async.series([
        function(callback){
            let msg = 'Chamou step 1. Valor na key1: ' + event.key1;
            console.log(msg);
            callback(null,msg);
        },
        function(callback){
            let msg = 'Chamou step 2. Valor na key2: ' + event.key2;
            console.log('Congelando por 3 segundos');
            setTimeout(function(){
                console.log(msg);
                callback(null,msg);
            },3000);
            
        }
    ], function(err, results){
        if(err){
            console.log(err);
            callback(err, "Erro ao finalizar processo");
        }
        else{
            console.log(results);
            callback(null, results);
        }
    })
}
