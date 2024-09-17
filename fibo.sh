#!/bin/bash

fibonacci() {
    local n=$1
    local a=0
    local b=1

    if [ $n -eq 0 ]; then
        echo "O número 0 pertence à sequência de Fibonacci."
        return
    fi

    while [ $b -le $n ]; do
        if [ $b -eq $n ]; then
            echo "O número $n pertence à sequência de Fibonacci."
            return
        fi
        temp=$((a + b))
        a=$b
        b=$temp
    done

    echo "O número $n não pertence à sequência de Fibonacci."
}

read -p "Digite um número: " num
fibonacci $num