#!/bin/bash

pid=$(ps aux | grep "python3 manage.py runserver" | grep -v grep | head -1 | xargs | cut -f2 -d" ")
 
if [[ -n "$pid" ]]; then
    kill -9 $piid 
fi

fuser -k 8000/tcp
python3 manage.py runserver
