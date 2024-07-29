package main

import (
	"strings"
	"strconv"
)

func loadMultiSectionNumber(text string) []int {

	if len(text) == 1 {
		id, err := strconv.Atoi(text)
		if err != nil {
			return []int{}
		}
		return []int{id}
	}

	
	listId := strings.Split(text, ",")
	result := make([]int, 0)
	for _, val := range listId {
		id, err := strconv.Atoi(val)
		if err != nil {
			continue
		}
		result = append(result, id)
	}
	return result

}