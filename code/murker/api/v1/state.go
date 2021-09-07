package v1

import (
	"net/http"

	"github.com/RadiatorSpring/ur/murker/mur"
	"github.com/gin-gonic/gin"
)

func stateHandler(runner mur.GameRunner) func(*gin.Context) {
	return func(c *gin.Context) {
		gamesCount := len(runner)

		c.JSON(http.StatusOK, gin.H{
			"gameCount": gamesCount,
		})
	}
}
