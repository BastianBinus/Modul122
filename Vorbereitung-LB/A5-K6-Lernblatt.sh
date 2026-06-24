function stars () {
    for ((i=0; i<$1; i++)); do
    echo -n "*"
    done
    echo
}

function lines () {
    local increment=1
    while [ $increment -le $1 ]; do
    stars $increment
    increment=$((increment + 1))
    done
}

function fakultaet () {
    if [ $1 -le 1 ]
}









#lines 10
fakultaet 3



