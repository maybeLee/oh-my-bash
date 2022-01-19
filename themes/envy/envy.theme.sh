#! bash oh-my-bash.module
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

function _omb_theme_PROMPT_COMMAND() {
    PS1="\n${yellow}$(_omb_prompt_print_ruby_env) ${purple}\h ${_omb_prompt_reset_color}in ${green}\w\n${_omb_prompt_bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${_omb_prompt_reset_color} "
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
