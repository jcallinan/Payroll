var btnAddEmployeeSubmit =   document.getElementById('btnAddEmployeeSubmit');
 var divLoading =   document.getElementById('loading');
 var divErrorMessage =   document.getElementById('error-message');
 var divSentMessage =   document.getElementById('sent-message');
divLoading.style.visibility ="hidden";
divErrorMessage.style.visibility ="hidden";
divSentMessage.style.visibility ="hidden";

 btnAddEmployeeSubmit.addEventListener("click",addEmployee);

 

function addEmployee() {
    var btnAddEmployeeSubmit =   document.getElementById('btnAddEmployeeSubmit')
    
//Should find upper level user credentials
    const EmployeeInformation = {
        method: 'POST',
        url: 'http://localhost:8080/addEmployee',
        headers: {'content-type': 'application/json'},
        data: {firstname: document.getElementById('FName').value, middleinitial: document.getElementById('MInitial').value,  lastname: document.getElementById('LName').value, title: document.getElementById('EmpTitle').value, salary: document.getElementById('EmpSalary').value, status: document.getElementById('EmpStatus').value}
      };
      
      axios.request(EmployeeInformation).then(function (response) {
        btnAddEmployeeSubmit.style("enabled","false");
        divSentMessage.style.visibility ="visible";

        console.log(response.data);
   
      }).catch(function (error) {
        console.error(error);
        divErrorMessage.style.visibility ="visible";

      });


}