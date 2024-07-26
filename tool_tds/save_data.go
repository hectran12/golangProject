package main

import (
	"log"
)



func createNewItem (name string, value string) (status bool) {
	var insertCommand string = "INSERT INTO info_tool (name, value) VALUES (?, ?)"
	var db = connectDB()
	defer db.Close()
	_, err := db.Exec(insertCommand, name, value)
	if err != nil {
		log.Fatal(err)
		return false
	}
	return true
}

func getAllData () (res map[string]string) {
	var queryCommand string = "SELECT * FROM info_tool"
	var db = connectDB()
	defer db.Close()
	rows, err := db.Query(queryCommand)
	if err != nil {
		log.Fatal(err)
	}

	defer rows.Close()

	var result map[string]string = make(map[string]string)
	for rows.Next() {
		var id int
		var name string
		var value string
		err := rows.Scan(&id, &name, &value)
		if err != nil {
			log.Fatal(err)
		}
		// add to result
		result[name] = value

	}

	return result
}


// func save_data (apikey string , dataAccount accountInfo ) {
	
// }