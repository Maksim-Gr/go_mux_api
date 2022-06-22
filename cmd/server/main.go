package main

import (
	"github.com/Maksim-Gr/go_mux_api/internal/server"
	"os"
)

func main() {
	a := server.App{}
	a.Initialize(
		os.Getenv("APP_DB_USERNAME"),
		os.Getenv("APP_DB_PASSWORD"),
		os.Getenv("APP_DB_NAME"),
		os.Getenv("CACHE_HOST"),
		os.Getenv("CACHE_PASS"))
	a.Run(":8010")
}
