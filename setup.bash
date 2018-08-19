#!/bin/bash
set +eux
sudo apt-get install -y git
git clone git://github.com/yyuu/pyenv.git ${HOME}/.pyenv
cat << EOF >> ${HOME}/.profile
export PYENV_ROOT=\${HOME}/.pyenv
export PATH=\${PYENV_ROOT}/bin:\${PATH}
eval "\$(pyenv init -)"
EOF
source ${HOME}/.profile
sudo apt-get install -y \
    zlib1g-dev \
    libbz2-dev \
    libreadline7 \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    build-essential
