#!/usr/bin/node
// script that display the status code of a GET request.
require('request').get(process.argv[2], function (err, x) {
  if (err) {
    console.log(err);
  } else {
    console.log('code: ' + x.statusCode);
  }
});
