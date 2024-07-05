## Linux:
## The ~/.bash_profile would be used once, at login. 
## The ~/.bashrc script is read every time a shell is started. 
## @See https://stackoverflow.com/a/415410

## Mac OS X's Terminal.app actually runs a login shell rather than a non-login shell by 
## default for each new terminal window, calling .bash_profile instead of .bashrc.

if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.environment ]; then
    . ~/.environment
fi

for file in ~/.bash_prompt; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

