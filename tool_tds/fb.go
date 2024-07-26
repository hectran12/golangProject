package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"strings"
	"html"
)


type InfoFB struct {
	name_fb string
	id string
}


func like (cookie_fb string, id_post string) bool {

	client := &http.Client{}
	req, err := http.NewRequest("GET", "https://mbasic.facebook.com/" + id_post, nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
	req.Header.Set("accept-language", "en-US,en;q=0.9")
	req.Header.Set("cookie", cookie_fb)
	req.Header.Set("dpr", "1")
	req.Header.Set("priority", "u=0, i")
	req.Header.Set("sec-ch-prefers-color-scheme", "light")
	req.Header.Set("sec-ch-ua", `"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"`)
	req.Header.Set("sec-ch-ua-full-version-list", `"Not/A)Brand";v="8.0.0.0", "Chromium";v="126.0.6478.185", "Google Chrome";v="126.0.6478.185"`)
	req.Header.Set("sec-ch-ua-mobile", "?0")
	req.Header.Set("sec-ch-ua-model", `""`)
	req.Header.Set("sec-ch-ua-platform", `"Windows"`)
	req.Header.Set("sec-ch-ua-platform-version", `"10.0.0"`)
	req.Header.Set("sec-fetch-dest", "document")
	req.Header.Set("sec-fetch-mode", "navigate")
	req.Header.Set("sec-fetch-site", "none")
	req.Header.Set("sec-fetch-user", "?1")
	req.Header.Set("upgrade-insecure-requests", "1")
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36")
	req.Header.Set("viewport-width", "1365")
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err := io.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	htmls := string(bodyText)
	
	if strings.Contains(htmls, "Trang bạn yêu cầu không thể hiển thị ngay bây giờ. Nguyên nhân có thể là trang tạm thời không hoạt động, liên kết bạn nhấp bị hỏng, hết hạn hoặc bạn không có quyền xem trang này.") {

		return false
	} else {
		url_like := strings.Split(htmls, "<a href=\"/a/like.php?")[1]
		url_like = strings.Split(url_like, "\"")[0]
		url_like = "https://mbasic.facebook.com/a/like.php?" + url_like
		decodeStringed := html.UnescapeString(url_like)
		fmt.Println(decodeStringed)
		client := &http.Client{}
		req, err := http.NewRequest("GET", decodeStringed, nil)
		if err != nil {
			log.Fatal(err)
		}
		req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
		req.Header.Set("accept-language", "en-US,en;q=0.9")
		req.Header.Set("cookie", "sb=fK2jZnZuilETudqbwynQiSdW; datr=fK2jZo4TH4Md_kn3jXMrln7U; c_user=100083152343235; m_page_voice=100083152343235; ps_l=1; ps_n=1; presence=C%7B%22t3%22%3A%5B%5D%2C%22utc3%22%3A1722007271103%2C%22v%22%3A1%7D; fr=1bFojh0AHrqV8J2r2.AWXxliQmLOdNErc6qAwSN37hAUw.Bmo79_..AAA.0.0.Bmo79_.AWU5fbCKzbE; xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296%3A%3AAcWqtGMePXnT3dRzZaTS4D0Eix4pObm48-Akr2ojpw; wd=1920x953")
		req.Header.Set("dpr", "1")
		req.Header.Set("priority", "u=0, i")
		req.Header.Set("referer", "https://mbasic.facebook.com/story.php?story_fbid=pfbid02KfESEWd4FR3xnv59n98JbbtqwY4nng3YrnrUWn7MGUpN4cyzKQSQPwyGVBJuSryal&id=569976584&eav=Afb0hSPLMPZPJKTMfi6p8ja70_2MDi7cXsmlGtOFl2jhkzvwZGPUyfHIoaJE7HKJhFM&lul&paipv=0&_rdr")
		req.Header.Set("sec-ch-prefers-color-scheme", "light")
		req.Header.Set("sec-ch-ua", `"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"`)
		req.Header.Set("sec-ch-ua-full-version-list", `"Not/A)Brand";v="8.0.0.0", "Chromium";v="126.0.6478.185", "Google Chrome";v="126.0.6478.185"`)
		req.Header.Set("sec-ch-ua-mobile", "?0")
		req.Header.Set("sec-ch-ua-model", `""`)
		req.Header.Set("sec-ch-ua-platform", `"Windows"`)
		req.Header.Set("sec-ch-ua-platform-version", `"10.0.0"`)
		req.Header.Set("sec-fetch-dest", "document")
		req.Header.Set("sec-fetch-mode", "navigate")
		req.Header.Set("sec-fetch-site", "same-origin")
		req.Header.Set("sec-fetch-user", "?1")
		req.Header.Set("upgrade-insecure-requests", "1")
		req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36")
		req.Header.Set("viewport-width", "1365")
		resp, err := client.Do(req)
		if err != nil {
			log.Fatal(err)
		}
		defer resp.Body.Close()
		// bodyText, err := io.ReadAll(resp.Body)
		// if err != nil {
		// 	log.Fatal(err)
		// }
		return true

	}

	return false
}


func follow (cookie_fb string, id_follow string) bool {
	client := &http.Client{}
	req, err := http.NewRequest("GET", "https://mbasic.facebook.com/profile.php?id=" + id_follow, nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
	req.Header.Set("accept-language", "en-US,en;q=0.9")
	req.Header.Set("cache-control", "max-age=0")
	req.Header.Set("cookie", cookie_fb)
	req.Header.Set("dpr", "1")
	req.Header.Set("priority", "u=0, i")
	req.Header.Set("sec-ch-prefers-color-scheme", "light")
	req.Header.Set("sec-ch-ua", `"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"`)
	req.Header.Set("sec-ch-ua-full-version-list", `"Not/A)Brand";v="8.0.0.0", "Chromium";v="126.0.6478.185", "Google Chrome";v="126.0.6478.185"`)
	req.Header.Set("sec-ch-ua-mobile", "?0")
	req.Header.Set("sec-ch-ua-model", `""`)
	req.Header.Set("sec-ch-ua-platform", `"Windows"`)
	req.Header.Set("sec-ch-ua-platform-version", `"10.0.0"`)
	req.Header.Set("sec-fetch-dest", "document")
	req.Header.Set("sec-fetch-mode", "navigate")
	req.Header.Set("sec-fetch-site", "none")
	req.Header.Set("sec-fetch-user", "?1")
	req.Header.Set("upgrade-insecure-requests", "1")
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36")
	req.Header.Set("viewport-width", "1365")
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err := io.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	htmls := string(bodyText)
	url_follow := strings.Split(htmls, "<a href=\"/a/subscribe.php?")[1]
	url_follow = strings.Split(url_follow, "\"")[0]
	url_follow = "https://mbasic.facebook.com/a/subscribe.php?" + url_follow
	decodeStringed := html.UnescapeString(url_follow)
	req, err = http.NewRequest("GET", decodeStringed, nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
	req.Header.Set("accept-language", "en-US,en;q=0.9")
	req.Header.Set("cache-control", "max-age=0")
	req.Header.Set("cookie", cookie_fb)
	req.Header.Set("dpr", "1")
	req.Header.Set("priority", "u=0, i")
	req.Header.Set("sec-ch-prefers-color-scheme", "light")
	req.Header.Set("sec-ch-ua", `"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"`)
	req.Header.Set("sec-ch-ua-full-version-list", `"Not/A)Brand";v="8.0.0.0", "Chromium";v="126.0.6478.185", "Google Chrome";v="126.0.6478.185"`)
	req.Header.Set("sec-ch-ua-mobile", "?0")
	req.Header.Set("sec-ch-ua-model", `""`)
	req.Header.Set("sec-ch-ua-platform", `"Windows"`)
	req.Header.Set("sec-ch-ua-platform-version", `"10.0.0"`)
	req.Header.Set("sec-fetch-dest", "document")
	req.Header.Set("sec-fetch-mode", "navigate")
	req.Header.Set("sec-fetch-site", "none")
	req.Header.Set("sec-fetch-user", "?1")
	req.Header.Set("upgrade-insecure-requests", "1")
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36")
	req.Header.Set("viewport-width", "1365")
	resp, err = client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err = io.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	htmls = string(bodyText)
	if strings.Contains(htmls, "mbasic_logout_button") {
		return true
	}
	return false
}

func getInfoFB (cookie_fb string) (InfoFB, bool) {
	client := &http.Client{}
	req, err := http.NewRequest("GET", "https://mbasic.facebook.com/profile.php?eav=AfY9JbdRatBLyboN0-oJiyAgNpMvQD6q_p1uGttU_DeiIECKGLmdabsevf9HWw1f8mY&refid=8&paipv=0", nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
	req.Header.Set("accept-language", "en-US,en;q=0.9")
	req.Header.Set("cache-control", "max-age=0")
	req.Header.Set("cookie", cookie_fb)
	req.Header.Set("dpr", "1")
	req.Header.Set("priority", "u=0, i")
	req.Header.Set("referer", "https://mbasic.facebook.com/")
	req.Header.Set("sec-ch-prefers-color-scheme", "light")
	req.Header.Set("sec-ch-ua", `"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"`)
	req.Header.Set("sec-ch-ua-full-version-list", `"Not/A)Brand";v="8.0.0.0", "Chromium";v="126.0.6478.185", "Google Chrome";v="126.0.6478.185"`)
	req.Header.Set("sec-ch-ua-mobile", "?0")
	req.Header.Set("sec-ch-ua-model", `""`)
	req.Header.Set("sec-ch-ua-platform", `"Windows"`)
	req.Header.Set("sec-ch-ua-platform-version", `"10.0.0"`)
	req.Header.Set("sec-fetch-dest", "document")
	req.Header.Set("sec-fetch-mode", "navigate")
	req.Header.Set("sec-fetch-site", "same-origin")
	req.Header.Set("sec-fetch-user", "?1")
	req.Header.Set("upgrade-insecure-requests", "1")
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36")
	req.Header.Set("viewport-width", "1365")
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err := io.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}

	html := string(bodyText)
	var obj InfoFB = InfoFB{}
	if strings.Contains(html, "mbasic_logout_button") {
		
		obj.name_fb = strings.Split(html, "<title>")[1] 
		obj.name_fb = strings.Split(obj.name_fb, "</title>")[0]
		obj.id = strings.Split(html, "profile_id=")[1]
		obj.id = strings.Split(obj.id, "&")[0]

		return obj, true
	} else {
		fmt.Println("Cookie live")
		return obj, false
	}
	return obj, false
}