# This is an example of the Bash language
main() {
    arr=()

    for i in {0..1}; do
        echo "Enter number $(( i+1 ))"
        read arr[i]
    done

    echo "Enter operator"
    read operator

    if [[ $operator == '+' ]]; then
        result=$(( arr[0]+arr[1] ))
    elif [[ $operator == '-' ]]; then
        result=$(( arr[0]-arr[1] ))
    elif [[ $operator == '*' ]]; then
        result=$(( arr[0]*arr[1] ))
    elif [[ $operator == '/' ]]; then
        result=$(( arr[0]/arr[1] ))
    else
        result='invalid'
    fi

    echo $result > output.txt
}

main

# Usage
# Run with bash Bash.sh in a POSIX terminal which has bash installed.
