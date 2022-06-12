#!/bin/bash

# 사전에 
# docker 설치 , docker 로그인
# sudo apt install npm
# sudo npm install -g npx 
# sudo npm cache clean --force
# sudo npm install -g n
# sudo n stable
# sudo npm install -g npm 
# 완료

ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'sudo systemctl start docker'
scp -i ~/Downloads/mac.pem ~/project3-microservices-day3/step-1-factory-api-doc/Dockerfile ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com:~/
scp -i ~/Downloads/mac.pem ~/project3-microservices-day3/step-1-factory-api-doc/openapi.yaml ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com:~/
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'npx redoc-cli bundle openapi.yaml --options.theme.colors.primary.main=orange'
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'mv redoc-static.html index.html'
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'sudo docker build . -t guqudjun111/factory'
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'sudo docker stop api'
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'sudo docker rm api'
ssh -i ~/Downloads/mac.pem ubuntu@ec2-3-38-95-120.ap-northeast-2.compute.amazonaws.com 'sudo docker run --name api -p 80:80 -d guqudjun111/factory'