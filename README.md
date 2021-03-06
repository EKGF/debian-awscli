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
- awscli
- uuid-dev
- dirmngr
- gnupg
- less
- groff
- ca-certificates
- netbase
- unzip
- jq
- rsync
- krb5-user (not yet)
- krb5-config (not yet)
- libgssapi-krb5-2 (not yet)

Python libraries:

- wheel
- setuptools
- rdflib
- sparqlwrapper
- ekglib
- boto3
- botocore
- owlrl
- pandas
- python-dateutil
- requests
- six
- stringcase
- humps
- argparse
- inflection
- ldap3
- xlrd
- pystardog
- unidecode
- gssapi (not yet)