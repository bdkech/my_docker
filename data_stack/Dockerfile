# container for any data science work
# VS Code and JupyerLab
#
# docker run -p 8443:8443 -p 8888:8888 \
#   -v $(pwd)/data:/data -v $(pwd)/code:/code \
#   --rm -it my_data_sci
#
# the base miniconda3 image
FROM continuumio/miniconda3:latest

# load in the environment.yml file - this file controls what Python packages we install
ADD environment.yml /

# install the Python packages we specified into the base environment
RUN conda update -n base conda -y && conda env update

# download the coder binary, untar it, and allow it to be executed
RUN wget https://github.com/codercom/code-server/releases/download/1.408-vsc1.32.0/code-server1.408-vsc1.32.0-linux-x64.tar.gz \
    && tar -xzvf code-server1.408-vsc1.32.0-linux-x64.tar.gz && chmod +x code-server1.408-vsc1.32.0-linux-x64/code-server

COPY docker-entrypoint.sh /usr/local/bin/

ENV PATH="/usr/local/bin/:${PATH}"
RUN echo "export PATH=$PATH" > /etc/environment

ENTRYPOINT ["docker-entrypoint.sh"]
