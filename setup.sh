source /exp/sbnd/app/users/yuhw/setup.sh

path-remove ()
{
    local IFS=':';
    local NEWPATH;
    local DIR;
    local PATHVARIABLE=${2:-PATH};
    for DIR in ${!PATHVARIABLE};
    do
        if [ "$DIR" != "$1" ]; then 
            NEWPATH=${NEWPATH:+$NEWPATH:}$DIR;
        fi;
    done;   
    export $PATHVARIABLE="$NEWPATH"
}

path-prepend ()
{
    path-remove "$1" "$2";
    local PATHVARIABLE="${2:-PATH}";
    export $PATHVARIABLE="$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
}

path-append ()
{
    path-remove "$1" "$2";
    local PATHVARIABLE="${2:-PATH}";
    export $PATHVARIABLE="${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
}

workdir=/exp/sbnd/app/users/yuhw/dnn-roi/

path-prepend $workdir/moon/wire-cell-data WIRECELL_PATH
path-prepend /exp/sbnd/app/users/yuhw/wire-cell-toolkit/cfg WIRECELL_PATH
path-prepend $workdir/moon/wire-cell-toolkit/cfg/ WIRECELL_PATH

path-prepend /exp/sbnd/app/users/yuhw/opt/lib64/ LD_LIBRARY_PATH
