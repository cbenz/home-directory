# Virtualenvs

# eval (python -m virtualfish)
# Now I use "pew" https://github.com/berdario/pew!
# added by Pew
source (pew shell_config)
set -xg VIRTUALENVWRAPPER_WORKON_CD 0

# set -xg PATH ./node_modules/.bin $PATH
set -xg PATH $PATH ~/.local/bin
# set -xg PATH ~/.cargo/bin $PATH

# This sample prompt is customized for virtualenv, see ~/.config/fish/functions/fish_prompt.fish
# source /usr/share/fish/tools/web_config/sample_prompts/informative_vcs.fish

# Custom key bindings
# (disabled because Super-d does not work with those bindings)
# bind -k ppage ''
# bind -k npage ''

# Stop overwriting clipboard
set FISH_CLIPBOARD_CMD "cat"

abbr -a a atom-beta .
abbr -a c code .
abbr -a g git
abbr -a gd git diff
abbr -a gf git fetch
abbr -a gfa git fetch --all
abbr -a gra git rebase --abort
abbr -a gg git grep
abbr -a ggw git grep -w
abbr -a ggui git gui
abbr -a gk gitk --all
abbr -a gs git status
abbr -a l ls
abbr -a ll ls -lh
abbr -a t ls -ltr
abbr -a S ls -lSr
abbr -a acs apt search
abbr -a acsh apt show
abbr -a acp apt policy
abbr -a dL dpkg -L
abbr -a dS dpkg -S
abbr -a pi pip install
abbr -a pie pip install -e .

# Functions leveraging the cb() function
function cbf -d "Copy contents of a file to a clipboard"
  cat "$argv" | cb
end

function cbssh -d "Copy (default) SSH public key to a clipboard"
  cb ~/.ssh/id_rsa.pub
end

function cbwd -d "Copy current working directory to a clipboard"
  pwd | cb
end

function cbhs -d "Copy most recent command in history to a clipboard"
  history | head -n 1 | cb
end

# Keychain

# if status --is-interactive
#   keychain --eval --quiet -Q id_rsa | source
# end

# OPAM configuration
source /home/cbenz/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true

