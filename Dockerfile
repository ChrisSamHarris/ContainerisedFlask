FROM python:3.7

RUN mkdir /app
#The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile. 
#If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/main.py"]

##### Docker ####

#Get the official Python Base Image for version 3.7 from Docker Hub.
#In the image, create a directory named app.
#Set the working directory to that new app directory.
#Copy the local directory’s contents to that new folder into the image.
#Run the pip installer (just like we did earlier) to pull the requirements into the image.
#Inform Docker the container listens on port 5000.
#Configure the starting command to use when the container starts.