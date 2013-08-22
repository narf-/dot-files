# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# change prompt when using git
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[m\]\h:\W \$ "
# swap to below to not set any color
#PS1="\$(parse_git_branch)\h:\W \$ "
export PS1

