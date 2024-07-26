package main

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"strconv"
	"strings"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

// độ màu
const GREEN string = "\033[1;32m"
const RED string = "\033[1;31m"
const YELLOW string = "\033[1;33m"
const BLUE string = "\033[1;34m"
const PURPLE string = "\033[1;35m"
const CYAN string = "\033[1;36m"
const WHITE string = "\033[1;37m"
const RESET string = "\033[0m"




var BASE_URL string = "https://traodoisub.com/api/"

var user string 
var xu int64 
var xudie int64


type accountInfo struct {
	user string
	xu int64
	xudie int64
}



var (
	apiKey string 
	idfb string
	cookie_fb string 
)


func claimMoney (path string) bool {
	url := BASE_URL + path
	// fetch url
	resp, err := http.Get(url)
	if err != nil {
		fmt.Println("Error fetching url")
	}
	defer resp.Body.Close()
	
	body, err := ioutil.ReadAll(resp.Body)
	source := string(body)
	var result map[string]interface{}
	if err := json.Unmarshal(body, &result); err != nil {
		fmt.Println("Error parsing json")
		return false
	}

	success, ok := result["success"].(float64)
	if !ok {
		log.Fatalf("Lỗi khi ép kiểu success: không phải là float64")
		return false
	}
	if success == 200 {
		data := result["data"].(map[string]interface{})
		xu, ok := data["xu"].(float64)
		if !ok {
			log.Fatalf("Lỗi khi ép kiểu xu: không phải là float64")
			return false
		}
		msg, ok := data["msg"].(string)
		if !ok {
			log.Fatalf("Lỗi khi ép kiểu msg: không phải là string")
			return false
		}
		id, ok := data["id"].(string)
		if !ok {
			log.Fatalf("Lỗi khi ép kiểu id: không phải là string")
			return false
		}

		fmt.Println("\r[" + id + "] " + msg + " => " + strconv.Itoa(int(xu)) + " xu   ")
		return true
	} else {
		fmt.Println("Error: ", source)
		return false
	}



	return false

}

func lamJob (id string, type_job string) bool {
	if type_job == "follow" {
		isFollow := follow(cookie_fb, id)
		if isFollow {
			return true 
		} 
		return false
	} else {
		fmt.Println(id)
		isLike := like(cookie_fb, strings.Split(id, "_")[1])
		if isLike {
			return true
		}
		return false
	}
	
}

func layJob (path string) (data []map[string]interface{}, ok bool) {
	client := &http.Client{}
	req, err := http.NewRequest("GET", BASE_URL + path, nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0")
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err := io.ReadAll(resp.Body)
	if strings.Contains(string(bodyText), "countdown") {
		var result map[string]interface{}
		if err := json.Unmarshal(bodyText, &result); err != nil {
			fmt.Println("Error parsing json")
			return nil, false
		}

		countdownValue, ok := result["countdown"].(float64)
		if !ok {
			log.Fatalf("Lỗi khi ép kiểu countdown: không phải là float64")
		}
		countdown := int(countdownValue)

		for i:=countdown; i>0; i-- {
			fmt.Printf("\rĐang chờ %d giây", i)
			time.Sleep(1 * time.Second)
		}

		fmt.Printf("\rTiến hành lấy job\n")
		
		time.Sleep(3 * time.Second)
		return layJob(path)

	}
	if err != nil {
		log.Fatal(err)
	}
	
	var result []map[string]interface{}
	if err := json.Unmarshal(bodyText, &result); err != nil {
		fmt.Println("Error parsing json")
		return nil, false
	}

	fmt.Println("Data: ", result)
	return result, true
}


func fetchGET (path string) (data map[string]interface{}, ok bool) {

	
	url := BASE_URL + path
	// fetch url
	resp, err := http.Get(url)
	if err != nil {
		fmt.Println("Error fetching url")
	}
	defer resp.Body.Close()
	 
	body, err := ioutil.ReadAll(resp.Body)

	if err != nil {
		fmt.Println("Error reading body")
		//return err, false
	} 

	var result map[string]interface{}
	if err := json.Unmarshal(body, &result); err != nil {
		fmt.Println("Error parsing json")
		return nil, false
	}

	if data, ok := result["data"].(map[string]interface{}); ok {
		return data, true
	} else {
		fmt.Println("Error parsing data")
		return nil, false
	}


}




func actionJob (typeJob string) bool {
	for {
		dataJob, ok := layJob("?fields=" + typeJob + "&access_token=" + apiKey)
		if !ok {
			fmt.Println("Error")
			return false
		}

		for _, value := range dataJob {
			id_job := value["id"].(string)
			if lamJob(id_job, typeJob) {
				fmt.Println(GREEN, typeJob +" thành công id ", id_job, RESET)
				data := claimMoney("coin/?type=" + typeJob + "&id=" + id_job + "&access_token=" + apiKey)
				if data {
					fmt.Println(GREEN, "Nhận xu thành công", RESET)
				} else {
					fmt.Println(RED, "Nhận xu không thành công", RESET)
				}

			} else {
				fmt.Println(RED, typeJob +" không thành công id ", id_job, RESET)
				time.Sleep(5 * time.Second)
			}
			
			for i:=5; i>0; i-- {
				fmt.Printf("\rĐang chờ %d giây", i)
				time.Sleep(1 * time.Second)
			}
		}

	} 
	



}



func run_tool () (status bool) {
	var result map[string]string = getAllData()
	isOldData := false
	if len(result) == 0 {
		fmt.Println(BLUE, "Chưa có cấu hình trước đây", RESET)
	} else {
		fmt.Print(GREEN, "Bạn có muốn sài config trước dây không? (y/n): ", RESET)
		var ask string 
		fmt.Scan(&ask)

		if ask == "y" {
			isOldData = true
		}
	}

	

	if isOldData {
		fmt.Println(BLUE, "Cấu hình đã set trước đây", RESET)

		if result["apikey"] == "" {
			fmt.Print(YELLOW, "Nhập api key: ")
			fmt.Scan(&apiKey)
		} else {
			apiKey = result["apikey"]
			fmt.Println("Api key: ", apiKey)
		}
		
		if result["idfb"] == "" {
			fmt.Print(YELLOW, "Nhập idfb: ")
			fmt.Scan(&idfb)
		} else {
			idfb = result["idfb"]
			fmt.Println("idfb: ", idfb)
		}

		if result["cookie_fb"] == "" {
			fmt.Print(YELLOW, "Nhập cookie fb: ")
			fmt.Scan(&cookie_fb)
		} else {
			cookie_fb = result["cookie_fb"]
			fmt.Println("Cookie fb: ", cookie_fb)
		}
		
	} else {
		
		fmt.Print(YELLOW, "Nhập api key: ")
		fmt.Scan(&apiKey)
	
		fmt.Print(YELLOW, "Nhập idfb: ")
		fmt.Scan(&idfb)
	
		fmt.Print(YELLOW, "Nhập cookie fb: ")
		fmt.Scan(&cookie_fb)
	}
	
	
	

	

	var data, _ = fetchGET("?fields=profile&access_token=" + apiKey)


	// get info traodoisub
	if data != nil{
		
		user = data["user"].(string)
		fmt.Println("Tài khoản: ", user)

		xu, err := strconv.ParseInt(data["xu"].(string), 10, 64)
		if err != nil {
			fmt.Println("Error parsing xu")
			return false
		}

		xudie, err := strconv.ParseInt(data["xudie"].(string), 10, 64)
		if err != nil {
			fmt.Println("Error parsing xudie")
			return false
		}



		fmt.Println("Xu hiện có: ", xu)
		fmt.Println("Xu die: ", xudie)


		//var objAccount accountInfo = accountInfo{user, xu, xudie}

	

	} else {
		fmt.Println("Error")
		return false
	}


	createNewItem("apikey", apiKey)
	// set cau hinh 

	data, _ = fetchGET("?fields=run&id=" + idfb + "&access_token=" + apiKey)
	if data != nil {
		msg := data["msg"].(string)
		if msg == "Cấu hình thành công!" {
			fmt.Println("Đặt cấu hình fb thành công!")
		} else {
			fmt.Println("Error setting fb")
			return false
		}
	} else {
		fmt.Println("Error")
		return false
	}

	createNewItem("idfb", idfb)
	createNewItem("cookie_fb", cookie_fb)

	// get info fb
	var dataFB, err = getInfoFB(cookie_fb)
	if !err {
		fmt.Println("Error")
		return false
	} 

	fmt.Println(YELLOW, "Name fb: ", dataFB.name_fb, RESET)
	fmt.Println(YELLOW, "ID fb: ", dataFB.id, RESET)


	var dataJob map[int]string = make(map[int]string)
	dataJob[1] = "follow";
	dataJob[2] = "like";
	
	fmt.Println("Vui lòng chọn job muốn làm: ")
	for key, value := range dataJob {
		fmt.Println("[",key,"] =>", value)
	}
	fmt.Print("Chọn job: ")
	var job int
	fmt.Scan(&job)

	if job > 2 && job < 1 {
		fmt.Println("Job không hợp lệ")
		return false
	}

	switch job {
	case 1:
		actionJob("follow")
	case 2:
		actionJob("like")
	default:
		fmt.Println("Job không hợp lệ")
		return false
	}





	



	return false
}

func main () {
	run_tool()
}