#/bin/bash -x
 
function _snip_complete_()
{
    local cmd="${1##*/}"
    local word=${COMP_WORDS[COMP_CWORD]}
    local line=${COMP_LINE}
    local xpat='!*'

    COMPREPLY=( $(compgen -W "$(snips list)" -- "${word}" ))
}
 
complete -F _snip_complete_ snip