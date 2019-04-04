for file in ~/.{bash_prompt,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add git completion to the bash
source ~/.git-completion.bash

export PATH=$PATH:/Users/raphaelmor/.local/bin/:/Users/raphaelmor/homebrew/bin/
