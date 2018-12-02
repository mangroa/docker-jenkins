
# Build Jenkins Docker instance hosted on AWS ECS
This repo creates a Jenkins Docker Image and pushes it to Docker Hub.
The stack starts the Jenkins instance in a Docker container running in AWS ECS.

# Create the image and stack
1. Create image 

`docker build -t alanmangroo/jenkins:latest .`

2. Push the image to Docker Hub

`docker login --username=<DOCKER_USERNAME>`
  
`docker push alanmangroo/jenkins:latest`

3. Create this stack in AWS to build a Jenkins instance that runs inside a Docker container.


# Access Jenkins using the ELB public URL

Get the Jenkins URL from the AWS Stack output values.

To access the initial key:
1. SSH onto the EC2 

`ssh -i <keyname> ec2-user@<EC2_IP>`

2. Get the list of container IDs

`docker ps`

3. Get the password from the container running on the EC2 host

`docker exec -it <CONTAINER_ID> more /var/jenkins_home/secrets/initialAdminPassword`

