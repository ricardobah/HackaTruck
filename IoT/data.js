

var data    
//var url = 'http://ricardoribeiroiot.mybluemix.net/getall'
var url = 'http://127.0.0.1:3001/sensor'
var body ='<?xml version="1.0" encoding="utf-8"?><configuration><system.webServer><httpProtocol><customHeaders>  <add name="Access-Control-Allow-Origin" value="*" /></customHeaders></httpProtocol></system.webServer></configuration>'
request = new XMLHttpRequest();

request.open('GET', url, true);
var espaco = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
request.onload = function () {
    console.log("azul")
    data = JSON.parse(this.response)
    console.log(data)
    var i=0;
    if (request.status >= 200 && request.status < 400) {
        console.log(request.status)
        data.forEach(dados => {
            document.getElementById('data').innerHTML+=(espaco+data[i].d.temperatura+espaco+espaco+data[i].d.pressao+espaco+data[i].d.altitude+'<br/>')
            i++;
        })
    } else {
        console.log('error')
    }
    
}


request.send(body)

