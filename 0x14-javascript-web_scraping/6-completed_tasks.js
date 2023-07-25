#!/usr/bin/node
// script that computes the number of tasks completed by user id
const request = require('request');

request(process.argv[2], function (error, response, body) {
  if (error) {
    console.error(error);
  }
  const dict = JSON.parse(body).reduce((idx, taskx) => {
    if (!idx[taskx.userId]) {
      if (taskx.completed) {
        idx[taskx.userId] = 1;
      }
    } else {
      if (taskx.completed) {
        idx[taskx.userId] += 1;
      }
    }
    return idx;
  }, {});
  console.log(dict);
});
