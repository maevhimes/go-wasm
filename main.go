package main

import "syscall/js"

func main() {
	ch := make(chan struct{}, 0)
	dev = development.NewContainer()
	js.Global().Set("run", run())
	println("I am wasm")

	<-ch
}
