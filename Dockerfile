FROM jupyter/pyspark-notebook

LABEL version=0.2
LABEL owner=lecornu-app

USER root

RUN wget https://repos.spark-packages.org/graphframes/graphframes/0.8.3-spark3.5-s_2.12/graphframes-0.8.3-spark3.5-s_2.12.jar -qO $SPARK_HOME/jars/graphframes-0.8.3-spark3.5-s_2.12.jar

RUN wget https://repo1.maven.org/maven2/org/apache/spark/spark-avro_2.12/3.5.0/spark-avro_2.12-3.5.0.jar -qO $SPARK_HOME/jars/spark-avro_2.12-3.5.0.jar

RUN python -m pip install --no-cache-dir findspark==2.0.1

USER jovyan