# We will use Ubuntu for our image
FROM ubuntu
# Updating Ubuntu packages
RUN apt-get update && yes|apt-get upgrade
# Adding wget and bzip2
RUN apt-get install -y wget bzip2
# Anaconda installing
RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b
RUN rm Anaconda3-5.0.1-Linux-x86_64.sh
# Set path to conda
ENV PATH /root/anaconda3/bin:$PATH
# Updating Anaconda packages
RUN conda update conda
RUN conda install anaconda
RUN conda update anaconda
RUN conda update --all
RUN conda install -c pytorch -c fastai fastai
