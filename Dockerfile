FROM jupyter/datascience-notebook
LABEL maintainer="blue271828"

RUN pip install --no-cache-dir \
	jupyterlab-drawio \
	lckr-jupyterlab-variableinspector

RUN jupyter labextension install \
    @jupyterlab/toc
