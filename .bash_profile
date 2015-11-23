
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.path ]; then
    . ~/.path
fi

for file in ~/.bash_prompt; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

