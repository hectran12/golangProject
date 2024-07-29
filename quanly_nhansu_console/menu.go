package main 

import (
	"fmt"
	"strconv"
)



var listFunc []string = []string {
	"Quan ly phong ban",
	"Quan ly nhan vien",
}


func menu () int {
	loadText(GREEN + "Danh sach chuc nang" + RESET + "\n")
	bar(30)
	for idx, val := range listFunc {
		loadText(GREEN + "[" + BLUE + strconv.Itoa(idx) + GREEN + "]" + RESET + " " + val + "\n")
	}
	bar(30)

	loadText(GREEN + "Chon chuc nang: " + RESET)
	var choice int 
	fmt.Scan(&choice)

	// check vaild
	if choice > 1 || choice < 0 {
		loadText(RED + "Chon sai, chon lai" + RESET + "\n")
		menu()
	}

	return choice
}
