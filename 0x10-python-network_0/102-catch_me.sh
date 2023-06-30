#!/bin/bash
# script that makes a request to 0.0.0.0:5000/catch_me and respond
curl -sX PUT -H "Origin: MuriSchool" "0.0.0.0:5000/catch_me" -L -d "user_id=98"
