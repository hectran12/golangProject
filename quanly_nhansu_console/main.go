package main 




func main () {
	// loadText(GREEN + "Loading..." + RESET)
	// sleep(3) // tron lay vi en
	// clear()
	// bar(30)
	// clear()
	// loadText("Hacking success") // tron lay vi en=))

	choice := menu()

	if choice == 0 {
		// Quan ly phong ban
		phongBan()
	} else {
		// Quan ly nhan vien
		nhanVien()
	}
	clear()
	main()

}