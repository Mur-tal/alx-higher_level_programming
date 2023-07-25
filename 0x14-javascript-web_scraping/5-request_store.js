#!/usr/bin/node
// script that gets the contents of a webpage and stores it in a file.
require('request').get(process.argv[2], function (err, r, body) {
  if (err) {
    console.log(err);
  } else {
    require('fs').writeFile(process.argv[3], body, 'utf-8', function (err) {
      if (err) {
        console.log(err);
      }
    });
  }
});
