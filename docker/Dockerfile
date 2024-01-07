FROM litcoderr/tch-rs
######## Build whatever image you want initially ########

RUN apt-get update -y && \
  apt-get upgrade -y

# install prerequisites
RUN apt-get install -y unzip
RUN apt-get install -y git

# universal way to install neovim
RUN cd /
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage
RUN ./nvim.appimage --appimage-extract
RUN ./squashfs-root/AppRun --version
RUN ln -s /squashfs-root/AppRun /usr/bin/nvim
RUN git clone https://github.com/litcoderr/my_lazyvim.git ~/.config/nvim

# add alias
RUN echo 'alias vim="nvim"' >> /root/.bashrc

WORKDIR /
