FROM jupyter/datascience-notebook
LABEL maintainer="blue271828"

RUN jupyter labextension install \
    @jupyterlab/toc \
    jupyterlab-drawio
