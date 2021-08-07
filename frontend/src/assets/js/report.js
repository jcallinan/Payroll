 
 var btnGetReport =   document.getElementById('btnGetReport');
 var divLoading =   document.getElementById('loading');
 var divErrorMessage =   document.getElementById('error-message');
 var divSentMessage =   document.getElementById('sent-message');
divLoading.style.visibility ="hidden";
divErrorMessage.style.visibility ="hidden";
divSentMessage.style.visibility ="hidden";

 btnGetReport.addEventListener("click",getReport);

 

function getReport() {
    var btnGetReport =   document.getElementById('btnGetReport')
    

    const options = { 
        method: 'POST',
        url: 'http://localhost:8080/reports',
        headers: {'content-type': 'application/json'},
        data: {username: document.getElementById('user_name').value, password: document.getElementById('password').value}
      };
      
      axios.request(options).then(function (response) {
        btnGetReport.style("enabled","false");
        divSentMessage.style.visibility ="visible";

        console.log(response.data);
   
      }).catch(function (error) {
        console.error(error);
        divErrorMessage.style.visibility ="visible";

      });


}
