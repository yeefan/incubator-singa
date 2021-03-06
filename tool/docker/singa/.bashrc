export LIBRARY_PATH=/opt/OpenBLAS/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/OpenBLAS/lib:/usr/local/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=/opt/OpenBLAS/include:$CPLUS_INCLUDE_PATH
export PATH=$PATH:/opt/jdk1.8.0_60/bin:/opt/bin
export JAVA_HOME=/opt/jdk1.8.0_60
export SINGA_HOME=/root/incubator-singa
export PATH=$PATH:$SINGA_HOME/bin
alias ls="ls --color=always"
# some more ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
