package main 


import (
	"strconv"
	"fmt"
	"math/rand"
)


type phongban struct {
	id int
	name string
	dsNhanVien []nhanvien
	salary int64
}

var dsPhongBan []phongban = []phongban{}


var listFuncPhongBan []string = []string {
	"Them phong ban",
	"Xoa phong ban",
	"Chinh sua phong ban",
}


func randomIdPhongBan () int {
	return rand.Intn(100000)
}




func editPhongBan () {
	loadText("Danh sach phong ban hien tai" + "\n")
	showDSPhongBan()
	loadText(GREEN + "Nhap stt phong ban muon chinh sua (ex: 1,2,3,4) or nhap exit de thoat: " + RESET)
	var listSTT string
	fmt.Scan(&listSTT)

	if listSTT == "exit" {
		return
	}

	listChoice := []int{}

	if len(listSTT) == 1 {
		num, _ := strconv.Atoi(listSTT)
		listChoice = append(listChoice, num)
	} else {
		listChoice = loadMultiSectionNumber(listSTT)
	}


	for idx, val := range listChoice {
		fmt.Print("[" + strconv.Itoa(idx) + "] Tien hanh chinh sua phong ban co id " + strconv.Itoa(dsPhongBan[val].id) + "\n")
		fmt.Print(GREEN + "Nhap ten phong ban: " + YELLOW)
		fmt.Scan(&dsPhongBan[idx].name)
		fmt.Print(GREEN + "Nhap luong co ban: " + YELLOW)
		fmt.Scan(&dsPhongBan[idx].salary)
	}


	
	
}

func addPhongBan () {
	loadText(YELLOW + "Danh sach phong ban hien tai" + RESET + "\n")
	showDSPhongBan()
	loadText(GREEN + "Them phong ban (nhap exit de thoat)" + RESET + "\n")
	fmt.Print(GREEN + "Nhap ten phong ban muon them: " + YELLOW)
	var name string 
	fmt.Scan(&name)


	if name == "exit" {
		return
	}


	if name == "" {
		loadText(RED + "Ten phong ban khong duoc de trong" + RESET + "\n")
		addPhongBan()
	}

	fmt.Print(GREEN + "Nhap luong co ban cua phong ban: " + YELLOW)
	var salary int64 
	fmt.Scan(&salary)

	if salary == 0 {
		loadText(RED + "Luong co ban khong duoc de trong" + RESET + "\n")
		addPhongBan()
	}



	id := randomIdPhongBan()
	var pb phongban = phongban{
		id: id,
		name: name,
		salary: salary,
	}

	dsPhongBan = append(dsPhongBan, pb)
	loadText(GREEN + "Them phong ban thanh cong" + RESET + "\n")

	

}


func deletePhongBan () {
	loadText(YELLOW + "Danh sach phong ban hien tai" + RESET + "\n")
	showDSPhongBan()
	loadText(GREEN + "Xoa phong ban (nhap exit de thoat)" + RESET + "\n")
	
	var listSTT string
	fmt.Print(GREEN + "Nhap STT cua phong ban muon xoa (co the nhap nhieu stt ex: 1,2,3,4): " + YELLOW)
	fmt.Scan(&listSTT)

	listSTTMuonXoa := loadMultiSectionNumber(listSTT)
	for _, val:= range listSTTMuonXoa { 
		// delete phong ban
		if val >= len(dsPhongBan) {
			loadText(RED + "STT khong ton tai" + RESET + "\n")
			deletePhongBan()
		}
		dsPhongBan = append(dsPhongBan[:val], dsPhongBan[val+1:]...)
		loadText(GREEN + "Xoa phong ban thanh cong" + RESET + "\n")
		
	}


	

}


func checkExistIdPhongBan (id int) bool {
	for _, val := range dsPhongBan {
		if val.id == id {
			return true
		}
	}

	return false
}

func showDSPhongBan () {

	if len(dsPhongBan) == 0 {
		loadText(YELLOW + "Hien tai khong co phong ban nao" + RESET + "\n")
		return
	}

	for idx, val := range dsPhongBan {
		fmt.Print(GREEN + "[" + BLUE + strconv.Itoa(idx) + GREEN + "]" + RESET + " ID: " + strconv.Itoa(val.id) + " Name: " + val.name +  " Salary: " + strconv.FormatInt(val.salary, 10) + "\n")
	}
}

func menuPhongBan () int {
	bar(30)
	for idx, val := range listFuncPhongBan {
		loadText(GREEN + "[" + BLUE + strconv.Itoa(idx) + GREEN + "]" + RESET + " " + val + "\n")
	}

	fmt.Print(BLUE + "Chon chuc nang: " + YELLOW)
	var choice int 
	fmt.Scan(&choice)

	if choice > (len(listFuncPhongBan)-1) || choice < 0 {
		loadText(RED + "Chon sai, chon lai" + RESET + "\n")
		menuPhongBan()
	}
	return choice
}

func phongBan () {

	choice := menuPhongBan()

	switch choice {
	case 0:
		addPhongBan()
	case 1:
		deletePhongBan()
	case 2:
		editPhongBan()
	default:
		return 
	}




}