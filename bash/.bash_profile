for file in ~/.{bash_prompt,aliases,path}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add git completion to the bash
source ~/.git-completion.bash
PATH=~/.xclink/bin:$PATH
