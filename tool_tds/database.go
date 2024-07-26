package main  


import (
	"database/sql"
	"fmt"
)

var server string = "localhost"
var username string = "root"
var password string = ""
var dbname string = "tool"

/*
TABLE STRUCT:
info_tool (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    value TEXT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


*/

var dbconnect = fmt.Sprintf("%s:%s@tcp(%s)/%s", username, password, server, dbname)



func connectDB() *sql.DB {
	db, err := sql.Open("mysql", dbconnect)
	if err != nil {
		panic(err.Error())
	}
	return db
}

