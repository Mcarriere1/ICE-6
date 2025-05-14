function add(){
    echo $(($1 + $2))
}
function sub(){
    echo $(($1 - $2))
}

while true; do
    read -p "What operation? " func
    if [ $func = 'add' ]; then
        read -p "First Number: " x
        read -p "Second Number: " y
        add $x $y
    elif [ $func = 'sub' ]; then
        read -p "First Number: " x
        read -p "Second Number: " y
        sub $x $y
    else
        echo "Hey dont do that. We're done here!"
        exit 1
    fi
done