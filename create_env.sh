#!/bin/bash

USERNAME=$1
ENV_NAME=$2

echo "username: $USERNAME"
echo "creating env = $ENV_NAME"
conda create -n $ENV_NAME --copy python=2.7 jupyter pandas
source activate $ENV_NAME
conda install --copy -c conda-forge mrjob=0.5.5
conda install --copy -c conda-forge matplotlib=2.0.2
conda install --copy -c anaconda nltk=3.2.4
cd .conda/envs/$ENV_NAME/
zip -r ~/$ENV_NAME.zip *
cd ~
hdfs dfs -mkdir /user/$USERNAME/virtualenv/
hdfs dfs -put $ENV_NAME.zip /user/$USERNAME/virtualenv/
# jupyter notebook
# !python mrjob_systems_test.py stuff.txt -r hadoop \
#     --python-bin=./my_env/bin/python \
#     --archive=”hdfs:///user/USERNAME/virtualenv/my_env.zip#my_env”
