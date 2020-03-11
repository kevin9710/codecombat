#!/bin/bash 
echo ----------Stop mongodb 
sudo mongo admin --port 27017 --eval "db.shutdownServer()" 
echo ----------Stop Mongodb ok! 