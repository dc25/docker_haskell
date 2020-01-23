FROM sshd_so4

ARG user
ARG id

COPY install_stack.sh /tmp
RUN su ${user} -c /tmp/install_stack.sh

COPY install_vscode.sh /tmp
RUN /tmp/install_vscode.sh

COPY install_hie_wrapper.sh /tmp
RUN su ${user} -c /tmp/install_hie_wrapper.sh

