package main

import (
    "fmt"
    "os"
)

func main() {
    var arr [2]int
    for i := 0; i < 2;i++ {
        fmt.Printf("Enter number %d\n", i+1)
        fmt.Scanln(&arr[i])
    }

    var operator string
    fmt.Println("Enter operator")
    fmt.Scanln(&operator)

    var result int
    invalid := false
    if operator == "+" {
        result = arr[0] + arr[1]
    } else if operator == "-" {
        result = arr[0] - arr[1]
    } else {
        fmt.Println("This operator has not been included.")
        invalid = true
    }

    f, _ := os.Create("output.txt")
    if !invalid {
        fmt.Fprintln(f, result)
    } else {
        fmt.Fprintln(f, "invalid operation")
    }
}
