

var mysql = require('mysql');
var cors = require('cors');
var con = mysql.createConnection({
    host: "localhost",
    user: "payroll",
    password: "ygdf6t763g$%^@asd",
    database: "payroll"
  });
 
const express = require('express');
const app = express();
// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded());
app.use(cors());

// Parse JSON bodies (as sent by API clients)
app.use(express.json());


app.post('/addUser', function(req, res) {
    mydata = req.body;
        var sql = "INSERT INTO users (user_name, password) VALUES ('" + mydata.user_name + "', '" + mydata.password + "')";
        con.query(sql, function (err, result) {
          if (err) throw err;
          console.log("1 record inserted");
});
})



app.post('/addEmployee', function(req, res) {
  mydata = req.body;

  var SudoUser = "SELECT (user_name, password) FROM users WHERE VALUES ('" + mydata.SudoUsername + "', '" + mydata.SudoPassword + "')";

  if(SudoUser.length != 0){
    var sql = "INSERT INTO employees (emp_first_name, emp_last_name, title, salary, active ) VALUES ('" + mydata.FName + "', '" + mydata.LName + "', '" + mydata.EmpTitle + "', '" + mydata.EmpSalary + "', '" + mydata.EmpStatus + "')";
      con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("1 record inserted");
      });
}
  
})

app.post('/SubTime', function(req, res) {
  mydata = req.body;

      var sql = "INSERT INTO hours (emp_id, work_date, start_time, end_time, break, paytype_id) VALUES ('" + mydata.Employee_Id + "', '" + mydata.work_date + "', '" + mydata.start_time + "', '" + mydata.end_time + "', '" + mydata.break + "', '" + mydata.paytype_id + "')";
      con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("1 record inserted");
      });

})

app.get('/', (req, res) => {
    res.send('Hello from App Engine!');
});

// Listen to the App Engine-specified port, or 8080 otherwise
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}...`);
});