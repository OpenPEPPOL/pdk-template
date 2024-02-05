FROM klakegg/pdk

ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN true \
 #
 # Install extra tooling
 && apt update \
 && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends apt-utils dialog make \
 && DEBIAN_FRONTEND=noninteractive apt install -y openssh-server openssh-client less iproute2 procps lsb-release \
 #
 # Create local user
 && groupadd --gid $USER_GID $USERNAME \
 && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
 #
 # Cleaning up
 && apt autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -mindepth 1 -maxdepth 1 | xargs rm -rf