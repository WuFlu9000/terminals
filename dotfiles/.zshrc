# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi


# Dependancies You Need for this Config
# zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
# autojump - jump to directories with j or jc for child or jo to open in file manager
# zsh-autosuggestions - Suggestions based on your history

# Initial Setup
# touch "$HOME/.cache/zshhistory
# Setup Alias in $HOME/zsh/aliasrc
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

ZSH_THEME="avit"
#ZSH_THEME="robbyrussel"
#ZSH_THEME="agnoster"
POWERLEVEL9K_MODE='nerdfont-complete'


# Please only use this battery segment if you have material icons in your nerd font (or font)
# Otherwise, use the font awesome one in "User Segments"
#prompt_zsh_battery_level() {
#  local percentage1=`acpi | grep -o '[0-9]*%'`
#  local percentage=`echo "${percentage1//\%}"`
#
#  local color='%F{red}'
#  local symbol="\uf00d"
#  acpi | grep "Discharging" > /dev/null
#  if [ $? -eq 0 ]; then
#    local charging="true";
#  fi
#  if [ $percentage -le 20 ]
#  then symbol='\uf579' ; color='%F{red}' ;
#    #10%
#  elif [ $percentage -gt 19 ] && [ $percentage -le 30 ]
#  then symbol="\uf57a" ; color='%F{red}' ;
#    #20%
#  elif [ $percentage -gt 29 ] && [ $percentage -le 40 ]
#  then symbol="\uf57b" ; color='%F{yellow}' ;
#    #35%
#  elif [ $percentage -gt 39 ] && [ $percentage -le 50 ]
#  then symbol="\uf57c" ; color='%F{yellow}' ;
#    #45%
#  elif [ $percentage -gt 49 ] && [ $percentage -le 60 ]
#  then symbol="\uf57d" ; color='%F{blue}' ;
#    #55%
#  elif [ $percentage -gt 59 ] && [ $percentage -le 70 ]
#  then symbol="\uf57e" ; color='%F{blue}' ;
#    #65%
#  elif [ $percentage -gt 69 ] && [ $percentage -le 80 ]
#  then symbol="\uf57f" ; color='%F{blue}' ;
#    #75%
#  elif [ $percentage -gt 79 ] && [ $percentage -le 90 ]
#  then symbol="\uf580" ; color='%F{blue}' ;
#    #85%
#  elif [ $percentage -gt 89 ] && [ $percentage -le 99 ]
#  then symbol="\uf581" ; color='%F{blue}' ;
#    #85%
#  elif [ $percentage -gt 98 ]
#  then symbol="\uf578" ; color='%F{green}' ;
#    #100%
#  fi
#  if [ $charging = "true" ];
#  then color='%F{green}'; if [ $percentage -gt 98 ]; then symbol='\uf584'; fi
#  fi
#  echo -n "%F{white}\uE0B3 %{$color%}$symbol %F{white}$percentage%% " ;
#}
#
#prompt_zsh_internet_signal(){
#  local symbol="\uf7ba"
#  local strength=`iwconfig wlp5s0 | grep -i "link quality" | grep -o "[0-9]*/[0-9]*"`
  
#  echo -n "%F{white}\uE0B3 $symbol $strength"
#}


prompt_codetalk() {
    local content='\uF17C c{}deTalk'
    $1_prompt_segment "$0" "$2" "black" "white" "$content" "#"
}

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="grey"
POWERLEVEL9K_TIME_FOREGROUND="yellow"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='orange'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='orange'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'


POWERLEVEL9K_VCS_HIDE_TAGS='false'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{cyan}\u256D\u2500%f"

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{cyan}\u2570\uf460%f "
POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='blue'
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='black'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(codetalk context custom_internet_signal  ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context custom_internet_signal  ssh root_indicator dir dir_writable vcs)

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(icons_test)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  custom_battery_status_joined zsh_internet_signal time)
HIST_STAMPS="dd/mm/yyyy"
DISABLE_UPDATE_PROMPT=true
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='grey'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='yellow'

POWERLINE9K_CODETALK_DEFAULT_BACKGROUND='grey'
POWERLINE9K_CODETALK_DEFAULT_FOREGROUND='green'
# vi_mode color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  zsh-syntax-highlighting
  zsh-autosuggestions
  extract
  colored-man-pages
  sudo
  history
  catimg
  npm
  pip 
  python 
  bindkey
  chucknorris
)


#alias ll='colorls -lA --sd --group-directories-first'
#alias ls='colorls --group-directories-first'

bindkey '^`' autosuggest-clear

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS

# Enable colors and change prompt:
ENABLE_CORRECTION="true" #autocorrection
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Custom Variables
EDITOR=vim

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load aliases and shortcuts if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"
neofetch
# Load ; should be last.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source ~/powerlevel10k/powerlevel10k.zsh-theme
source $(dirname $(gem which colorls))/tab_complete.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
