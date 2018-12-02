
Create image 
docker build -t alanmangroo/jenkins:latest .

Push the image to Docker Hub
docker login --username=<USERNAME>
docker push alanmangroo/jenkins:latest


Create this stack in AWS for a Jenkins instance that runs inside a Docker container.


This stack starts a Jenkins instance in a Docker container running in AWS ECS.

Access Jenkins using the ELB public URL


To access the initial key:
1. SSH onto the EC2 
ssh -i <keyname> ec2-user@<EC2_IP>
2. Get the list of container IDs
docker ps
3. Get the password from the container running on the EC2 host
docker exec -it <CONTAINER_ID> more /var/jenkins_home/secrets/initialAdminPassword 

