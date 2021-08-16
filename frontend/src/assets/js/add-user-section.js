 
 var btnAddUserSubmit =   document.getElementById('btnAddUserSubmit');
 var divLoading =   document.getElementById('loading');
 var divErrorMessage =   document.getElementById('error-message');
 var divSentMessage =   document.getElementById('sent-message');
divLoading.style.visibility ="hidden";
divErrorMessage.style.visibility ="hidden";
divSentMessage.style.visibility ="hidden";

 btnAddUserSubmit.addEventListener("click",addUser);

 

function addUser() {
    

    const options = {
        method: 'POST',
        url: 'http://localhost:8080/addUser',
        headers: {'content-type': 'application/json'},
        data: {username: document.getElementById('user_name').value, password: document.getElementById('password').value}
      };
      
      axios.request(options).then(function (response) {
        btnAddUserSubmit.style("enabled","false");
        divSentMessage.style.visibility ="visible";

        console.log(response.data);
   
      }).catch(function (error) {
        console.error(error);
        divErrorMessage.style.visibility ="visible";

      });


}
