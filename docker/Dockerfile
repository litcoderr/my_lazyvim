FROM litcoderr/tch-rs
######## Build whatever image you want initially ########

RUN apt-get update -y && \
  apt-get upgrade -y

# install unzip
RUN apt-get install -y unzip

# install git
RUN apt-get install -y git

# install homebrew
RUN DEBIAN_FRONTEND=noninteractive /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.bashrc

# install neovim
RUN /home/linuxbrew/.linuxbrew/bin/brew install neovim
RUN git clone https://github.com/litcoderr/my_lazyvim.git ~/.config/nvim

# add alias
RUN echo 'alias vim="nvim"' >> /root/.bashrc

WORKDIR /
