# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi

# Aliases for xampp
alias startlampp="sudo /opt/lampp/lampp start"
alias stoplampp="sudo /opt/lampp/lampp stop"
alias startapache="sudo /opt/lampp/lampp startapache"
alias stopapache="sudo /opt/lampp/lampp stopapache"
alias startmysql="sudo /opt/lampp/lampp startmysql"
alias stopmysql="sudo /opt/lampp/lampp stopmysql"
alias restartapache="sudo systemctl restart httpd.service"

# Open Brave in workspace 2 from the terminal
brave() {
  i3-msg workspace 2; brave &
}
# Open Visual Studio Code in workspace 3 from the terminal
code()  {
  i3-msg workspace 3; code &
}
# Open Thunderbird in workspace 4 from the terminal
thunderbird() {
  i3-msg workspace 4; thunderbird &
}

export PATH=$PATH:/opt/lampp/bin

unset rc
