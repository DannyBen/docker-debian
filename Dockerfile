FROM debian

# Packages
ENV PACKAGES \
  apt-transport-https \
  apt-utils \
  bash-completion \
  build-essential \
  curl \
  git \
  sudo \
  vim \
  wget

# Install packages
RUN apt-get update && apt-get install $PACKAGES -y

# Set a passwordless sudoer user
RUN adduser --disabled-password --gecos "" megatron && \
    usermod -aG sudo megatron && \
    echo "%sudo  ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/nopasswd

# Switch to the megatron user
WORKDIR /home/megatron
USER megatron

# User environment
ENV TERM=linux
RUN echo 'PS1="\n\n>> debian \W \$ "' >> ~/.bashrc

CMD bash
