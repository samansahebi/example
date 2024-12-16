package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	// Create a default Gin router
	r := gin.Default()

	// Define a GET route for the root endpoint
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "Hello, World!",
		})
	})

	// Start the server on port 8080
	r.Run(":8080")
}
