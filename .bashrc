# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

if [ "$PS1" ]; then
    #PS1="\[\033[00;32m\][\[\033[00;35m\]\u\[\033[00;32m\] @ \[\033[01;34m\] \h \[\033[00;32m\]\w]\\[\033[01;37m\]: "
    PS1="\[\033[01;35m\]\u\[\033[01;32m\]@\h\[\033[00m\] :\[\033[01;34m\] \w \[\033[00m\]\$ "
fi

# cd
alias cfiles="cd /var/fpwork/imitrut/CFiles/"
alias cppfiles="cd /var/fpwork/imitrut/CPPFiles/"
alias cpptcr="cd /var/fpwork/imitrut/CPPTCR_Examples/"
alias cppll="cd /var/fpwork/imitrut/CPPLinkedList/"
alias cv="cd /var/fpwork/cvoicule/Teme/"
alias im="cd /var/fpwork/imitrut/"

# ls
alias ll="ls -lah"

# misc
alias clr="clear"
alias eclipse="eclipse & disown"

# build
alias cc="compile_C"
alias ccpp="compile_CPP"

# git
alias pAll="git_push_all"
alias push="git_pushCCPP"



# compound commands
git_push_all(){
	git add *;
	git commit -m "$1";
	git push;
}

git_pushCCPP(){
	git add *.c* *.h*;
	git commit -m "$1";
	git push;
}

compile_C(){
    gcc "$1" -o output;
}

compile_CPP(){
    g++ "$1" -o output;
}
