"use strict";
const aws = require("aws-sdk");
var ses = new aws.SES();

const ses = async (event) => {

exports.handler = async function (event) {
  var params = {
    Destination: {
      ToAddresses: ["RecipientEmailAddress", ],
    },
    Message: {
      Body: {
        Text: { Data: "Test" },
      },

      Subject: { Data: "Test Email" },
    },
    Source: "SourceEmailAddress",
  };
 
  return ses.sendEmail(params).promise()
};
}
      
module.exports = {
  ses
};