package main

import (
	"fmt"
	"time"
)

var BLACK string = "\033[30m"
var RED string = "\033[31m"
var GREEN string = "\033[32m"
var YELLOW string = "\033[33m"
var BLUE string = "\033[34m"
var MAGENTA string = "\033[35m"
var CYAN string = "\033[36m"
var WHITE string = "\033[37m"
var RESET string = "\033[0m"
var BG_BLACK string = "\033[40m"
var BG_RED string = "\033[41m"
var BG_GREEN string = "\033[42m"
var BG_YELLOW string = "\033[43m"
var BG_BLUE string = "\033[44m"
var BG_MAGENTA string = "\033[45m"
var BG_CYAN string = "\033[46m"
var BG_WHITE string = "\033[47m"
var BRIGHT_BLACK string = "\033[90m"
var BRIGHT_RED string = "\033[91m"
var BRIGHT_GREEN string = "\033[92m"
var BRIGHT_YELLOW string = "\033[93m"
var BRIGHT_BLUE string = "\033[94m"
var BRIGHT_MAGENTA string = "\033[95m"
var BRIGHT_CYAN string = "\033[96m"
var BRIGHT_WHITE string = "\033[97m"
var BG_BRIGHT_BLACK string = "\033[100m"
var BG_BRIGHT_RED string = "\033[101m"
var BG_BRIGHT_GREEN string = "\033[102m"
var BG_BRIGHT_YELLOW string = "\033[103m"
var BG_BRIGHT_BLUE string = "\033[104m"
var BG_BRIGHT_MAGENTA string = "\033[105m"
var BG_BRIGHT_CYAN string = "\033[106m"
var BG_BRIGHT_WHITE string = "\033[107m"



func usleep (microseconds int) {
	time.Sleep(time.Duration(microseconds) * time.Microsecond)
}

func bar(amount int) {
	for i := 0; i < amount; i++ {
		fmt.Print(WHITE + "=")
		usleep(100)
	}
	fmt.Println()
}


func sleep (seconds int) {
	time.Sleep(time.Duration(seconds) * time.Second)
}
func clear () {
	fmt.Print("\033[2J")
}

func loadText (text string) {
	for i:=0; i < len(text); i++ {
		fmt.Print(string(text[i]))
		usleep(100)
	}
}