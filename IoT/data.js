
sensorData= []
var data    
    request = new XMLHttpRequest();
    request.open('GET', 'https://ricardoribeiroiot.mybluemix.net/getall', true);
    request.onload = function () {
        data = JSON.parse(this.response)
        
        if (request.status >= 200 && request.status < 400) {
            data.forEach(users => {
                console.log(request.status)
                sensorData.push()
            })
        } else {
            console.log('error')
        }
        
    }
    
    
    request.send()

    
    
    
    
    getUsers = function(){
    
            
            data.forEach(data => {
                
               
              
            })
           
        return sensorData;
}