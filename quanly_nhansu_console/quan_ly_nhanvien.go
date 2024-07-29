package main 

import (
	"fmt"
	"strconv"
	"math/rand"
)


type nhanvien struct {
	id int
	firstName string 
	lastName string
	age int 
	location string 
	phongBanId int
}

var listMenuNhanVien []string = []string {
	"Them nhan vien",
	"Chinh sua nhan vien",
	"Xoa nhan vien",
}

var dsNhanvien []nhanvien = []nhanvien{}

func showDSNhanVien () {
	for idx, val := range dsNhanvien {
		fmt.Print("[" + strconv.Itoa(idx) + "]" + " " + val.firstName + " " + val.lastName + " age: " + strconv.Itoa(val.age) + " location: " + val.location + "\n")
	}
}



func randomIdNhanVien () int {
	return rand.Intn(100000)
}

func addNhanVien () {
	fmt.Print(GREEN + "Danh sach nhan vien hien co" + RESET + "\n")
	showDSNhanVien()
	var (
		firstName string 
		lastName string
		age int 
		location string
		phongBanId int
	)

	fmt.Print(GREEN + "Nhap ten nhan vien: " + YELLOW)
	fmt.Scan(&firstName)
	fmt.Print(GREEN + "Nhap ho nhan vien: " + YELLOW)
	fmt.Scan(&lastName)
	fmt.Print(GREEN + "Nhap tuoi nhan vien: " + YELLOW)
	fmt.Scan(&age)
	fmt.Print(GREEN + "Nhap dia chi nhan vien: " + YELLOW)
	fmt.Scan(&location)

	showDSPhongBan()
	fmt.Print(GREEN + "Nhap id phong ban: " + YELLOW)
	fmt.Scan(&phongBanId)

	if !checkExistIdPhongBan(phongBanId) {
		loadText(RED + "Id phong ban khong ton tai" + RESET + "\n")
		return
	}
	
	objnv := nhanvien{
		id: randomIdNhanVien(),
		firstName: firstName,
		lastName: lastName,
		age: age,
		location: location,
		phongBanId: phongBanId,
	}

	dsNhanvien = append(dsNhanvien, objnv)
	loadText(GREEN + "Them nhan vien thanh cong" + RESET + "\n")

	
}

func deleteNhanVien () {
	fmt.Print(GREEN + "Danh sach nhan vien hien co" + RESET + "\n")
	showDSNhanVien()
	fmt.Print(GREEN + "Nhap id nhan vien muon xoa (co the nhap nhieu id cach nhau boi dau phay): " + YELLOW)
	var choice string
	fmt.Scan(&choice)

	idstt := []int{}
	if len(choice) == 1 {
		num, _ := strconv.Atoi(choice)
		idstt = append(idstt, num)
	} else {
		idstt = loadMultiSectionNumber(choice)
	}

	for _, val := range idstt {
		if val > len(dsNhanvien) {
			loadText(RED + "Id khong ton tai" + RESET + "\n")
			return
		}
		dsNhanvien = append(dsNhanvien[:val], dsNhanvien[val+1:]...)
		loadText(GREEN + "Xoa nhan vien thanh cong" + RESET + "\n")
	}

}


func editNhanVien () {
	fmt.Print(GREEN + "Danh sach nhan vien hien co" + RESET + "\n")
	showDSNhanVien()
	fmt.Print(GREEN + "Nhap id nhan vien muon chinh sua (co the nhap nhieu id cach nhau boi dau phay): " + YELLOW)
	var choice string 
	
	idstt := []int{}

	if len(choice) == 0 {
		num, _ := strconv.Atoi(choice)
		idstt = append(idstt, num)
	} else {
		idstt = loadMultiSectionNumber(choice)
	}

	for _, val := range idstt {
		if val > len(dsNhanvien) {
			loadText(RED + "Id khong ton tai" + RESET + "\n")
			return
		}
		fmt.Print("Nhap ten nhan vien: ")
		fmt.Scan(&dsNhanvien[val].firstName)
		fmt.Print("Nhap ho nhan vien: ")
		fmt.Scan(&dsNhanvien[val].lastName)
		fmt.Print("Nhap tuoi nhan vien: ")
		fmt.Scan(&dsNhanvien[val].age)
		fmt.Print("Nhap dia chi nhan vien: ")
		fmt.Scan(&dsNhanvien[val].location)
		showDSPhongBan()
		fmt.Print("Nhap id phong ban: ")
		fmt.Scan(&dsNhanvien[val].phongBanId)
		if !checkExistIdPhongBan(dsNhanvien[val].phongBanId) {
			loadText(RED + "Id phong ban khong ton tai" + RESET + "\n")
			return
		}
		loadText(GREEN + "Chinh sua thanh cong" + RESET + "\n")

	}

}



func menuNhanVien () int {
	for idx, val := range listMenuNhanVien {
		loadText(GREEN + "[" + BLUE + strconv.Itoa(idx) + GREEN + "]" + RESET + " " + val + "\n")
	}

	var choice int 
	loadText(GREEN + "Chon chuc nang: " + RESET)
	fmt.Scan(&choice)
	
	if choice > (len(listMenuNhanVien)-1) || choice < 0 {
		loadText(RED + "Chon sai, chon lai" + RESET + "\n")
		menuNhanVien()
	}

	return choice
}

func nhanVien () {
	choice := menuNhanVien()
	switch choice {
	case 0:
		addNhanVien()
	case 1:
		editNhanVien()
	case 2:
		deleteNhanVien()
	default:
		return
	}
}