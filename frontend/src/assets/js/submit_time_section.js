 
 var btnsubtimeSubmit =   document.getElementById('btnsubtimeSubmit');
 var divLoading =   document.getElementById('loading');
 var divErrorMessage =   document.getElementById('error-message');
 var divSentMessage =   document.getElementById('sent-message');
divLoading.style.visibility ="hidden";
divErrorMessage.style.visibility ="hidden";
divSentMessage.style.visibility ="hidden";

btnsubtimeSubmit.addEventListener("click",subTime);

 

function subTime() {
    

    const options = {
        method: 'POST',
        url: 'http://localhost:8080/subTime',
        headers: {'content-type': 'application/json'},
        data: {Employee_Id: document.getElementById('Employee_Id').value, work_date: document.getElementById('work_date').value, start_time: document.getElementById('start_time').value, end_time: document.getElementById('end_time').value, break: document.getElementById('break').value, paytype_id: document.getElementById('paytype_id').value}
      };
      
      axios.request(options).then(function (response) {
        btnsubtimeSubmit.style("enabled","false");
        divSentMessage.style.visibility ="visible";

        console.log(response.data);
   
      }).catch(function (error) {
        console.error(error);
        divErrorMessage.style.visibility ="visible";

      });


}
