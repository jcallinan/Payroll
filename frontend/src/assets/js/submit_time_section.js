 
 var btnsubtimeSubmit =   document.getElementById('btnsubtimeSubmit');
 var divLoading =   document.getElementById('loading');
 var divErrorMessage =   document.getElementById('error-message');
 var divSentMessage =   document.getElementById('sent-message');
divLoading.style.visibility ="hidden";
divErrorMessage.style.visibility ="hidden";
divSentMessage.style.visibility ="hidden";

 btnAddUserSubmit.addEventListener("click",subTime);

 

function subTime() {
    var btnsubtimeSubmit =   document.getElementById('btnsubtimeSubmit')
    

    const options = {
        method: 'POST',
        url: 'http://localhost:8080/subTime',
        headers: {'content-type': 'application/json'},
        data: {Employee_Id: document.getElementById('Employee_Id').value, Date: document.getElementById('Date').value, Weekday: document.getElementById('Weekday').value, Start_Time: document.getElementById('Start_Time').value, End_Time: document.getElementById('End_Time').value, Break: document.getElementById('Break').value, Pay_type: document.getElementById('Pay_type').value}
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
