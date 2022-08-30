package main

import (
	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.SetTrustedProxies([]string{"172.0.0.1"})
	router.Use(static.Serve("/", static.LocalFile("./client/dist/app", true)))
	router.Run(":8080")
}
