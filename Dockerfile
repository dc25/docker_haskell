FROM devbase

ARG user
ARG id

COPY install_stack.sh /tmp
RUN su ${user} -c /tmp/install_stack.sh

COPY install_vscode.sh /tmp
RUN /tmp/install_vscode.sh

COPY install_hie_wrapper.sh /tmp
RUN su ${user} -c /tmp/install_hie_wrapper.sh

COPY install_ghcide.sh /tmp
RUN su ${user} -c /tmp/install_ghcide.sh

# COPY install_vscode_haskell_debugger.sh /tmp
# RUN su ${user} -c /tmp/install_vscode_haskell_debugger.sh 

COPY myBashrc /tmp
RUN su ${user} -c 'cp /tmp/myBashrc ~'
RUN su ${user} -c 'echo . ~/myBashrc | tee -a ~/.bashrc'

