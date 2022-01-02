#!/bin/bash
echo "Starting"
docker rmi nodeimage;
docker stop nodecontainer;
docker rm nodecontainer;
docker build -t nodeimage .;
docker run -d --name nodecontainer -p 5000:5000 nodeimage;
echo "Done"