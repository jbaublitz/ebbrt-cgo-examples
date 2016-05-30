package main

import "C"

//export TestGo
func TestGo() int64 {
    return 0xdeadbeef
}

func main() {
}
