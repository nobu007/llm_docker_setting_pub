FROM desktop_xrdp:latest

ARG USER
ARG USER_ID
ARG GROUP_ID
ENV HOME=/home/$USER
ENV PYENV_ROOT="${HOME}/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"
ENV DEBIAN_FRONTEND noninteractive

# Use bash
SHELL ["/bin/bash", "-c"]

USER $USER

WORKDIR /app

# RUN install_0.sh
ARG INSTALL_RESOURCES_0
COPY --chown=$USER_ID:$GROUP_ID install_0.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_0} /app/${INSTALL_RESOURCES_0}
RUN bash /app/install_0.sh

# RUN install_1.sh
ARG INSTALL_RESOURCES_1
COPY --chown=$USER_ID:$GROUP_ID install_1.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_1} /app/${INSTALL_RESOURCES_1}
RUN bash /app/install_1.sh

# RUN install_2.sh
ARG INSTALL_RESOURCES_2
COPY --chown=$USER_ID:$GROUP_ID install_2.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_2} /app/${INSTALL_RESOURCES_2}
RUN bash /app/install_2.sh

# RUN install_3.sh
ARG INSTALL_RESOURCES_3
COPY --chown=$USER_ID:$GROUP_ID install_3.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_3} /app/${INSTALL_RESOURCES_3}
RUN bash /app/install_3.sh

# RUN install_4.sh
ARG INSTALL_RESOURCES_4
COPY --chown=$USER_ID:$GROUP_ID install_4.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_4} /app/${INSTALL_RESOURCES_4}
RUN bash /app/install_4.sh

# RUN install_5.sh
ARG INSTALL_RESOURCES_5
COPY --chown=$USER_ID:$GROUP_ID install_5.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_5} /app/${INSTALL_RESOURCES_5}
RUN bash /app/install_5.sh

# RUN install_6.sh
ARG INSTALL_RESOURCES_6
COPY --chown=$USER_ID:$GROUP_ID install_6.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_6} /app/${INSTALL_RESOURCES_6}
RUN bash /app/install_6.sh

# RUN install_7.sh
ARG INSTALL_RESOURCES_7
COPY --chown=$USER_ID:$GROUP_ID install_7.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_7} /app/${INSTALL_RESOURCES_7}
RUN bash /app/install_7.sh

# RUN install_8.sh
ARG INSTALL_RESOURCES_8
COPY --chown=$USER_ID:$GROUP_ID install_8.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_8} /app/${INSTALL_RESOURCES_8}
RUN bash /app/install_8.sh

# RUN install_9.sh
ARG INSTALL_RESOURCES_9
COPY --chown=$USER_ID:$GROUP_ID install_9.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_9} /app/${INSTALL_RESOURCES_9}
RUN bash /app/install_9.sh

# RUN install_10.sh
ARG INSTALL_RESOURCES_10
COPY --chown=$USER_ID:$GROUP_ID install_10.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_10} /app/${INSTALL_RESOURCES_10}
RUN bash /app/install_10.sh

# RUN install_11.sh
ARG INSTALL_RESOURCES_11
COPY --chown=$USER_ID:$GROUP_ID install_11.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_11} /app/${INSTALL_RESOURCES_11}
RUN bash /app/install_11.sh

# RUN install_12.sh
ARG INSTALL_RESOURCES_12
COPY --chown=$USER_ID:$GROUP_ID install_12.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_12} /app/${INSTALL_RESOURCES_12}
RUN bash /app/install_12.sh

# RUN install_13.sh
ARG INSTALL_RESOURCES_13
COPY --chown=$USER_ID:$GROUP_ID install_13.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_13} /app/${INSTALL_RESOURCES_13}
RUN bash /app/install_13.sh

# RUN install_14.sh
ARG INSTALL_RESOURCES_14
COPY --chown=$USER_ID:$GROUP_ID install_14.sh /app/
COPY --chown=$USER_ID:$GROUP_ID ${INSTALL_RESOURCES_14} /app/${INSTALL_RESOURCES_14}
RUN bash /app/install_14.sh

# COPY all without .dockerignore
COPY --chown=$USER_ID:$GROUP_ID . .

# RUN install.sh
RUN bash /app/install.sh

ENV MPLBACKEND=agg

ARG ENTRYPOINT_SCRIPT
ENTRYPOINT ["/bin/bash", "--login"]
CMD ["bash"]

ARG HEALTHCHECK_SCRIPT
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 CMD [ "bash", "-c", "/app/$HEALTHCHECK_SCRIPT" ]

EXPOSE 6079
EXPOSE 6080
EXPOSE 7860
EXPOSE 8000
