#!/bin/bash
# script that makes a request to 0.0.0.0:5000/catch_me and respond
curl -sXLH PUT "Origin: MuritalaSchool" "0.0.0.0:5000/catch_me" -d "user_id=98"
