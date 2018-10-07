# Criscom-CommunicationServer-Docker
Dockerize the Communication Server from Criscom Solution

## How to 
1. Clone this Repository and change into the Directory with the source files.
2. Build the image: `docker-compose build`
3. Start the container: `docker-compose up -d`

During the build process docker will download the Node-10 base image which includes Nodejs.
It will also download the communication server and extract the application. 
PM2 as nodejs process manager and all other dependencies of the application will be downloaded and set up.


## Why Dockerized?
The official documentation uses a VM Image or a manual installation that are based on the old Nodejs 6.
Docker automates all steps and isolates the application in the container during operation. This image use the current Nodejs version and is easy to update.
