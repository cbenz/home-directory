set -U fish_color_host -o normal
set -U fish_color_user -o normal
source /usr/share/fish/tools/web_config/sample_prompts/classic_git.fish

# Stop overwriting clipboard.
set FISH_CLIPBOARD_CMD "cat"

abbr -a gd git diff
abbr -a gg git grep
abbr -a ggui git gui
abbr -a gk gitk --all
abbr -a gs git status
abbr -a l ls
abbr -a ll ls -l
abbr -a lt ls -ltr
abbr -a lS ls -lSr
abbr -a acs apt-cache search
abbr -a acsh apt-cache show
abbr -a acp apt-cache policy
abbr -a dL dpkg -L
abbr -a dS dpkg -S
