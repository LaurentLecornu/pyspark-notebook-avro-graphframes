# Pyspark Notebook extended with GraphFrames and Avro

This Dockerfile is based on `jupyter/pyspark-notebook`, which had graphframes and avro.

```
python 3.11
spark 3.5
graphframes 0.8.3
avro
```

Build the image and take note of the `id` to run the container. Be sure to forward port `8888` when starting it:

```bash
cd dockerfile_repertory
docker build . -t pyspark-notebook-graphframes-avro:0.2
```
to run a container of the previous image
```
docker run -p 8888:8888 -p 4040:4040 --name c1 --mount type=bind,source=/yourpath/TP,destination=/home/jovyan/work pyspark-notebook-graphframes-avro:0.1.1
```

Or use docker client to run the previous image (don't forget to forward port 8888 (jupyter) and 4040 (spark UI) and connect /home/jovyan/work with your local repertory.

Then click on http://127.0.0.1:8888/lab?.... (cf the link which appears on the terminal
