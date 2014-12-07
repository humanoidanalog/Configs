# Kel's ZSH config!
# Sections:
# → Zsh/General Shell
# → Oh-my-zsh!-Specific
# → Functions and Aliases
# → Updating

# ¶ Zsh/General Shell
autoload -U compinit && compinit # Ultra basic tab completion
setopt COMPLETE_IN_WORD # Allow tab completion in the middle of a word
setopt NOBGNICE # Keep background processes at full speed
setopt NO_BEEP # Never ever beep ever
LISTMAX=0 # Automatically decide when to page a list of completions
MAILCHECK=0 # Disable mail checking

# ¶ Oh-my-zsh!-Specific
plugins=(git) # oh-my-zsh plugins
ZSH_THEME="robbyrussell" # oh-my-zsh theme
export ZSH=`dirname $0`/oh-my-zsh # Path to oh-my-zsh install.
source $ZSH/oh-my-zsh.sh # Run oh-my-zsh scripts
 
# ¶ Functions and Aliases
s() { find -exec grep -n "$*" {} + 2> /dev/null } # Text search
b() { cd $(git rev-parse --show-cdup) } # Cd to root of current repo
alias f="find -name" # Search for file with name foo
alias vim="vim -p" # Allows multiple arguments to be opened as tabs
alias v="vim -p" # Lazy shorthand

# ¶ Updating
cd $(dirname $0) && git pull &> /dev/null && cd $HOME