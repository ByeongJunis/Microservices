"use strict";
const axios = require('axios');
require("dotenv").config();

const manufactures = async (event) => {

  for (const record of event.Records) {
  
      await axios.post(
        env.process.manufactures,
        {
            'MessageGroupId': record.attributes.MessageGroupId,
            'MessageAttributeProductId': JSON.parse(record.body).MessageAttributes.ProductId.Value,
            'MessageAttributeProductCnt': 10,
            'MessageAttributeFactoryId': JSON.parse(record.body).MessageAttributes.FactoryId.Value,
            'MessageAttributeRequester': '병준',
            'CallbackUrl': env.process.callbackurl
        },
        {
            headers: {
                'Content-Type': 'application/json'
            }
        }
    );
  }
}

module.exports = {
  manufactures
};