# Sphinx running in Docker: Easy Mode

Easy to run sphinx-server with autobuild and apidoc. This repo is an example of a trivial
application of a Sphinx Docker Server. It is based on the https://github.com/dldl/sphinx-server/
repository, thanks for that. Also, this adds a docker-compose file to help the extension of the
sphinx service. 

To run the server do this (you must have the docker daemon installed).

1) Install sphinx using pip.

```
pip install sphinx
```

2) Go to the root of your code directory. For this example the root of the code is the same
as where this readme is allocated.

3) Execute the sphinx quickstart running in the console sphinx-quickstart. This will config
the main files to run sphinx.

4) Execute

```
make html
```

this will create the html files that are going to contain your documentation.

3) Now get up the docker service running:

```
docker-compuse up --build -d
```



