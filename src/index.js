const express = require('express');
const bodyParser = require('body-parser')
const cors = require('cors');
const app = express();
const { db } = require('./model/dbConnection');
const { makeId } = require('./tools/makeId')
const { datetime } = require('./tools/datetime')

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));




const createLogRequest = (endpoint, param, log_id, user) => {
  let paramString = JSON.stringify(param)
  // console.log(endpoint, paramString, log_id, datetimeFormat(), user)
  const sqlQuery = "INSERT INTO T_LOG_APIREQUEST (endpoint, parameter_in, log_id,  usr_crt) VALUE (?, ?, ?, ?)";
  db.query(sqlQuery, [endpoint, paramString, log_id, user], (err, result) => {
    if (err) {
      console.log(err)
    } else {
      console.log("success created Log Request " + endpoint)
    }
  });
}
const createLogResponse = (endpoint, param, log_id, response_code, response_message, user) => {
  let paramString = JSON.stringify(param)
  const sqlQuery = "INSERT INTO T_LOG_APIRESPONSE (endpoint, parameter_in, log_id, response_code, response_message,  usr_crt) VALUE (?, ?, ?, ?, ?, ?)";
  db.query(sqlQuery, [endpoint, paramString, log_id, response_code, JSON.stringify(response_message), user], (err, result) => {
    if (err) {
      console.log(err)
    } else {
      console.log("success created Log Response " + endpoint)
    }
  });
}

// read
app.get('/api/GetMasterBranch', (req, res) => {
  var log_id = makeId(5)
  createLogRequest("GetMasterBranch", req.body, log_id, 'anonymous')
  const sqlQuery = "SELECT * FROM M_BRANCH";

  db.query(sqlQuery, (err, result) => {
    if (err) {
      createLogResponse("GetMasterBranch", req.body, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("GetMasterBranch", req.body, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200", "data": {
            result
          }
        }
      );
    }
  });
});

app.get('/api/GetMasterProduct', (req, res) => {
  var log_id = makeId(5)
  createLogRequest("GetMasterProduct", req.body, log_id, 'anonymous')
  const sqlQuery = "SELECT * FROM M_PRODUCT";

  db.query(sqlQuery, (err, result) => {
    if (err) {
      createLogResponse("GetMasterProduct", req.body, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("GetMasterBranch", req.body, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200", "data": {
            result
          }
        }
      );
    }
  });
});

app.get('/api/GetAllDataCust', (req, res) => {
  var log_id = makeId(5)
  createLogRequest("GetAllDataCust", req.body, log_id, 'anonymous')
  const sqlQuery = "SELECT * FROM T_DATA_CUSTOMER";

  db.query(sqlQuery, (err, result) => {
    if (err) {
      createLogResponse("GetAllDataCust", req.body, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("GetAllDataCust", req.body, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200", "data": {
            result
          }
        }
      );
    }
  });
});

app.get('/api/GetDataCustomer/:cust_id', (req, res) => {
  var log_id = makeId(5)
  const custId = req.params.cust_id;
  createLogRequest("GetDataCustomer", custId, log_id, 'anonymous')

  const sqlQuery = "SELECT * FROM T_DATA_CUSTOMER WHERE cust_id = ?";
  db.query(sqlQuery, custId, (err, result) => {
    if (err) {
      createLogResponse("GetDataCustomer", custId, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("GetDataCustomer", custId, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200", "data": {
            result
          }
        }
      );
    }
  });
});
// #####

// create
app.post('/api/SaveDataCust', (req, res) => {
  var log_id = makeId(5)
  console.log(req.body)
  createLogRequest("SaveDataCust", req.body, log_id, 'anonymous')
  const firstName = req.body.firstName;
  const lastName = req.body.lastName;
  const phoneNumber = req.body.phoneNumber;
  const branch = req.body.branch;
  const product = req.body.product;
  const tenor = req.body.tenor;
  const avatar = req.body.avatar;
  const sqlQuery = "INSERT INTO T_DATA_CUSTOMER (first_name, last_name, phone_no, branch_id, product_id, tenor_id, avatar, usr_crt) VALUE (?, ?, ?, ?, ?, ?, ?, ?)";
  db.query(sqlQuery, [firstName, lastName, phoneNumber, branch, product, tenor, avatar, 'anonymous'], (err, result) => {
    if (err) {
      createLogResponse("SaveDataCust", req.body, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("SaveDataCust", req.body, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200"
        }
      );
    }
  });
});
// #####

// update
app.put('/api/UpdateDataCust/:cust_id', (req, res) => {
  var log_id = makeId(5)
  createLogRequest("UpdateDataCust", req.body, log_id, 'anonymous')

  const cust_id = req.params.cust_id;
  const firstName = req.body.firstName;
  const lastName = req.body.lastName;
  const phoneNumber = req.body.phoneNumber;
  const branch = req.body.branch;
  const product = req.body.product;
  const tenor = req.body.tenor;
  console.log(cust_id, req.body)

  const sqlQuery = "UPDATE T_DATA_CUSTOMER SET first_name = ?, last_name = ?, phone_no = ?, branch_id = ?, product_id = ?, tenor_id = ?, dtm_upd = ?, usr_upd = ? WHERE cust_id = ?";
  db.query(sqlQuery, [firstName, lastName, phoneNumber, branch, product, tenor, datetime(), 'anonymous', cust_id], (err, result) => {
    if (err) {
      createLogResponse("UpdateDataCust", req.body, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
      console.log(err)
    } else {
      createLogResponse("UpdateDataCust", req.body, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200"
        }
      );
    }
  });
});
// #####

// delete
app.delete('/api/UpdateDataCust', (req, res) => {
  var log_id = makeId(5)
  createLogRequest("UpdateDataCust", req.body, log_id, 'anonymous')

  const custId = req.body.cust_id;

  const sqlQuery = "DELETE FROM T_DATA_CUSTOMER WHERE cust_id = ?";
  db.query(sqlQuery, custId, (err, result) => {
    if (err) {
      createLogResponse("UpdateDataCust", custId, log_id, "500", "Internal Server Error : " + err, 'anonymous')
      res.send(
        {
          "status": "Error", "statusCode": "500", "message": "Internal Server Error : " + err
        })
    } else {
      createLogResponse("UpdateDataCust", custId, log_id, "200", "Success", 'anonymous')
      res.send(
        {
          "status": "Success", "statusCode": "200", "data": {
            result,
            message: 'Delete Success'
          }
        }
      );
    }
  });
});
// #####

app.listen(3001, () => {
  console.log('server running at port 3001!');
});