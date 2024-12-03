source /exp/sbnd/app/users/yuhw/setup.sh

path-prepend ()
{
    path-remove "$1" "$2";
    local PATHVARIABLE="${2:-PATH}";
    export $PATHVARIABLE="$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
}

path-prepend `pwd`/moon/wire-cell-data WIRECELL_PATH
path-prepend /exp/sbnd/app/users/yuhw/wire-cell-toolkit/cfg WIRECELL_PATH
path-prepend `pwd`/moon/wire-cell-toolkit/cfg/ WIRECELL_PATH

path-prepend /exp/sbnd/app/users/yuhw/opt/lib64/ LD_LIBRARY_PATH
