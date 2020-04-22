FROM devbase

ARG user
ARG id

COPY install_stack.sh /tmp
RUN su ${user} -c /tmp/install_stack.sh

COPY install_hie_wrapper.sh /tmp
RUN su ${user} -c /tmp/install_hie_wrapper.sh

COPY install_vscode_haskell_debugger.sh /tmp
RUN su ${user} -c /tmp/install_vscode_haskell_debugger.sh 

COPY setup_vim_plug.sh /tmp
RUN su ${user} -c /tmp/setup_vim_plug.sh

COPY haskellBashrc /tmp
RUN su ${user} -c 'cp /tmp/haskellBashrc ~'
RUN su ${user} -c 'echo . ~/haskellBashrc | tee -a ~/.bashrc'

COPY haskellVimrc /tmp
RUN su ${user} -c 'cp /tmp/haskellVimrc ~'
RUN su ${user} -c 'echo so ~/haskellVimrc | tee -a ~/vimrc'

COPY install_vim_plugins.sh /tmp
RUN su ${user} -c /tmp/install_vim_plugins.sh

