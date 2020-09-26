# Setup word skipping using <Alt><RightArrow> and <Alt><LeftArrow> to behave
# like macOS.
# https://stackoverflow.com/questions/12382499/looking-for-altleftarrowkey-solution-in-zsh
bindkey '[C' forward-word
bindkey '[D' backward-word

# Setup command history cycling using <Alt><UpArrow> and <Alt><DownArrow>.
bindkey '[A' history-beginning-search-backward
bindkey '[B' history-beginning-search-forward

# Tell ls to use colored output.
alias ls='ls --color=auto'

# Use the typewritten prompt: https://github.com/reobin/typewritten
fpath+=~/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten

# Use zsh-completions: https://github.com/zsh-users/zsh-completions
fpath+=~/.zsh/zsh-completions/src

# Use zsh-suggestions: https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add NPM default bin directory to $PATH if created during installation.
N_PREFIX=~/.n
PATH=~/.npm-global/bin:$N_PREFIX/bin:$PATH
