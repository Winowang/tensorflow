# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
#FROM winowang/jupyter_images:latest
FROM winowang/jupyter_gpu:latest
#FROM winowang/dockerfile_test:cuda92-latest

LABEL maintainer="Jupyter Tensorflow"

#USER root
#RUN conda install --yes \
#    'qt=5.9.*' \
#    'pyqt=5.9.*'

# Tensorflow 1.10 GPU cuda9.2 
#RUN conda install --quiet --yes pytorch torchvision cuda90 -c pytorch && \

#RUN conda install --quiet --yes tensorflow=1.10.0=gpu_py36hcebf108_0 && \
#RUN conda install --quiet --yes tensorflow=1.11.0=gpu_py36h9c9050a_0 && \
RUN conda install --quiet --yes tensorflow=1.12.0=gpu_py36he74679b_0 && \


#    conda remove --quiet --yes --force qt pyqt && \
    conda clean -tipsy && \
    npm cache clean --force && \
    rm -rf $CONDA_DIR/share/jupyter/lab/staging && \
    rm -rf /home/.cache/yarn && \
    rm -rf /home/.node-gyp
