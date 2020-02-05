# Sphinx running in Docker: Easy Mode

Easy to run sphinx-server with autobuild and apidoc. This repo is an example of a trivial
application of a Sphinx Docker Server. It is based on the https://github.com/dldl/sphinx-server/
repository, thanks for that. Also, this adds a docker-compose file to help the extension of the
sphinx service. 

To run the server do this (you must have the docker daemon installed). The following steps assumes
that all your code is in the **src** folder.

1) Install sphinx using pip.

```
pip install sphinx
```

2) Copy the docker-compose.yml, init and refresh files into the root of your code directory.

3) Give permissions to the init and refresh bash files.

```
chmod 777 init.sh
chmod 777 refresh.sh
```

4) Execute the init ```./init.sh```. This will stop old sphinx-services, execute the initial 
sphinx configuration and gets up the container that runs the server for your documentation.

5) Now go to the conf.py file in the source folder. And make this changes
    * Add **master_doc = ''** at the end of the file
    * Change the html theme to 'sphinx_rtd_theme'
    * Add the following extension 'sphinx.ext.autodoc'
    * Uncomment the initial imports of the conf file. 



