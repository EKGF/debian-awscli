# Base Image - debian-awscli

debian-awscli is a lightweight base image that has bash, python and the AWS CLI on board (for S3 access)

We switched from Alpine to Debian for this image due to these two articles:
- https://pythonspeed.com/articles/base-image-python-docker-images/
- https://pythonspeed.com/articles/alpine-docker-python/

Utilities in this image:

- jq (for processing JSON)
- yq (for processing YAML)
- curl & wget (for executing HTTP commands)
- git
- rsync

Python libraries:

- awscli
- rdflib
- sparqlwrapper
- pystardog
- requests
- boto3
- owlrl
