package api

import "github.com/gin-gonic/gin"

type Server struct {
	router *gin.Engine
}

func NewServer() (*Server, error) {
	server := Server{}

	server.setupRoute()
	return &server, nil
}

func (server *Server) setupRoute() {
	router := gin.Default()
	router.GET("follow")
	server.router = router
}

func (server *Server) Start() {
	server.router.Run("localhost:2000")
}
