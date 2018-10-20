oneliner_alias_list=(
    "fn='find . -type f -name'"
    "fd='find . -type d -name'"
    "xa='xargs'"
    "pl='perl -alne'"
    "gr='grep -i -E'"
    "gv='grep -iv -E'"
)
function load_oneliner_alias () {
    for i in $oneliner_alias_list; do
        eval "alias $i"
    done
}
zle -N load_oneliner_alias
function unload_oneliner_alias () {
    for i in $oneliner_alias_list; do
        i=`echo "$i" | cut -d '=' -f 1`
        eval "unalias $i"
    done
}
zle -N unload_oneliner_alias
