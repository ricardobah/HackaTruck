
var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var url = 'http://ricardoribeiroiot.mybluemix.net/getall'
var data= []
request = new XMLHttpRequest();
request.open('GET', url, true);

request.onload = function () {
    console.log(request)
    data = JSON.parse(this.responseText)
    //data = this.responseText
    console.log("DATA"+data)
    var i=0;
    if (request.status >= 200 && request.status < 400) {
        console.log(request.status)
        data.forEach(dados => {
            data.push(dados)
        })
    } else {
        console.log('error')
    }
    
}


request.send()

module.exports = {
    async index(req,res){
      
       
        return res.json(data)
    },
     async show(req,res){
 
            return res.json(data[req.params.id])
     }
   

};