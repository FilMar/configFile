FROM archlinux:base-devel

ENV USER "filmar"
ENV HOME "/home/${USER}"
ENV ZSH "${HOME}/.oh-my-zsh"
RUN yes | pacman -Syyu
RUN yes | pacman -S zsh
RUN yes | pacman -S git
RUN yes | pacman -S neovim

RUN useradd -m ${USER} && echo "${USER} ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USER}
USER ${USER}

ENV CONFIG_FILE "/home/${USER}/Desktop/robaMia/configFile"

WORKDIR /home/${USER}
RUN curl -L http://install.ohmyz.sh | sh

COPY . ${CONFIG_FILE}
RUN rm ${HOME}/.zshrc 
RUN ln -s ${CONFIG_FILE}/zshConfig ${HOME}/.zshrc

RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH}//plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH}/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/reobin/typewritten.git ${ZSH}/themes/typewritten


CMD /bin/zsh

