#authenticate with ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 680138624865.dkr.ecr.us-east-1.amazonaws.com

#tag the docker image
docker tag capstone:latest 680138624865.dkr.ecr.us-east-1.amazonaws.com/capstone:latest

#push the image
docker push 680138624865.dkr.ecr.us-east-1.amazonaws.com/capstone:latest