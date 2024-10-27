package main

import (
	"golang-DB-migration/app/api"
	"log"
)

func main() {
	server, err := api.NewServer()
	if err != nil {
		log.Fatal("Can not connect server", err)
	}

	server.Start()
}
