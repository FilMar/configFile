FROM archlinux:base-devel

ENV USER "filmar"
ENV HOME "/home/${USER}"
RUN yes | pacman -Syyu
RUN yes | pacman -S zsh
RUN yes | pacman -S git
RUN yes | pacman -S neovim

RUN useradd -m ${USER} && echo "${USER} ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USER}
USER ${USER}

ENV CONFIG_FILE "/home/${USER}/Desktop/robaMia/configFile"

WORKDIR /home/${USER}
RUN curl -L http://install.ohmyz.sh | sh
RUN git clone https://github.com/ryanoasis/nerd-fonts.git
RUN ls -lah
RUN cd nerd-fonts && ./install.sh "Meslo"

COPY . ${CONFIG_FILE}
RUN rm ${HOME}/.zshrc 
RUN ln -s ${CONFIG_FILE}/zshConfig ${HOME}/.zshrc

RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k



CMD /bin/zsh

