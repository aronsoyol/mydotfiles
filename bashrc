#prompt color
export PS1="\[\e[30;46m\]\h:\W\\$\[\e[0m\]"

function title {
    echo -ne "\033]0;"$*"\007"
}

#grep color
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="01;33"
alias er="cat ~/Documents/YYSB/transcription/transcription_all.txt | grep"
alias ern="cat ~/Documents/YYSB/transcription/transcription_all.txt | grep -n"
alias pm='./pm.sh'
alias po='./po.sh'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`=/opt/bin:$PATH
export LODE_DEV=/Users/aron/dev/lode/dev
export DODEV_HOME=/Users/aron/dev/lode/dev/core-lo5=$LOAD_HOME/opt/bin:$PATH
##
# Your previous /Users/aron/.bash_profile file was backed up as /Users/aron/.bash_profile.macports-saved_2015-08-20_at_13:58:39
##

# MacPorts Installer addition on 2015-08-20_at_13:58:39: adding an appropriate PATH variable for use with MacPorts.="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export LANG="ja_JP.UTF-8"
export LC_COLLATE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"
export LC_MONETARY="ja_JP.UTF-8"
export LC_NUMERIC="ja_JP.UTF-8"
export LC_TIME="ja_JP.UTF-8"
export LC_MESSAGES="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"

#pyenv
#export PYENV_ROOT="$HOME/.pyenv"=$PYENV_ROOT:$PATH
#eval "$(pyenv init -)"

#To use Homebrew's directories rather than ~/.pyenv add to your profile:
export PYENV_ROOT=/usr/local/var/pyenv

#To enable shims and autocompletion add to your profile:
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
# Initialization for FDK command line tools.Mon Nov  7 14:38:23 2016
FDK_EXE="/Users/aron/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/aron/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
export tran=/Users/aron/Documents/YYSB/transcription
