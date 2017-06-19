# similarity_261
Similarity measures for synonyms over google 5-gram data

TODOs in the issues section: https://github.com/carlosscastro/similarity_261/issues

# Steps
1. Run Create_env.sh in terminal: sh create_env.sh <USERNAME> <ENV_NAME>
  - this will create a virtualenv and also upload the zip distribution to hdfs
2. Start Jupyter Notebook in terminal: jupyter notebook
3. Within the notebook, replace USERNAME and ENV with the same USERNAME and ENV_NAME
in step 1

<!-- USERNAME='chqngh'
ENV='hw5_test2'
pyBin ='./'+ENV+'/bin/python'
pyArchive = "hdfs:///user/"+USERNAME+"/virtualenv/"+ENV+".zip#"+ENV
!hdfs dfs -ls "hdfs:///user/{USERNAME}/virtualenv/"  -->
