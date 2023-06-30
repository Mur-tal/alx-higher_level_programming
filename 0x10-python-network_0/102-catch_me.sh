#!/bin/bash
# script that makes a request to 0.0.0.0:5000/catch_me and respond
curl -sX PUT -HL "Origin: HolbertonSchool" "0.0.0.0:5000/catch_me" -d "user_id=98"
