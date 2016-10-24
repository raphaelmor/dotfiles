for file in ~/.{bash_prompt,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# add stack autocompletion
eval "$(stack --bash-completion-script stack)"

# Add git completion to the bash
source ~/.git-completion.bash

# add path for global stack tools (ghc-mod hlint for ex)
export PATH="/Users/raphaelmor/.local/bin:${PATH}"
export PATH="/Volumes/Data/Users/raphaelmor/.local/bin:${PATH}"
export PATH="/Volumes/Data/Users/raphaelmor/bin:/Users/raphaelmor/bin:${PATH}"
# add stack autocompletion
eval "$(stack --bash-completion-script stack)"
