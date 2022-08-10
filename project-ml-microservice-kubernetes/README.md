[![CircleCI](https://dl.circleci.com/status-badge/img/gh/dele4dot/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/dele4dot/DevOps_Microservices/tree/master)

## Project Overview

The aim of this project is to operationalize a Machine Learning Microservice API. 

We have a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

The `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


### Project File Structure

1. [.circleci] - this directory contains the circleci config.yml file; which enables us to set up an automated testing environment.
2. [.devops] - this is the python virtual enviroment that contains all of our dependencies for this project =.
3. [model_data] - this directory contains the data that trains our model.
4. [output_txt_files] - this dir contains the log files from the application. The docker_out.txt and kubernetes_out.txt contains the log files from the docker and kubernetes environment respectively.
5. [app.py] - this is our actual application code
6. [Makefile] - contains the codes to install dependencies, lint our code et al
7. [Dockerfile] - contains the configuration for the docker image i.e. prediction_app
8. [run_docker.sh] - this is a script file to run our docker image
9. [upload_docker.sh] - this contains the script to upload the docker image to docker hub
10. [make_preditions.sh] - this is the script file used to test our model
11. [run_kubernetes.sh] - this is the script file to run the docker image on kubernetes


## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* Run `make lint` to catch any errors in our application code

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally

* Setup and Configure Kubernetes locally
`minikube start` - to start a k8 cluster
`minikube status` - to get the status of the cluster
`kubectl cluster-info` to get more information about the cluster

* Create Flask app in Container

* Run via kubectl
`kubectl run <pod_name> --image=<name_of_docker_image>`

### GITHUB LINK
[https://github.com/dele4dot/DevOps_Microservices]
