package v1

import (
	"github.com/RadiatorSpring/ur/murker/mur"
	"github.com/RadiatorSpring/ur/murker/murabi"
	"github.com/gin-gonic/gin"
)

func RegisterHandlers(router *gin.Engine, runner mur.GameRunner, registry RoomRegistry, murabiClient *murabi.MurabiClient) {
	router.GET("/v1/state", stateHandler(runner))
	router.POST("/v1/game", gameGenerationHandler(runner, registry, murabiClient))
	router.GET("/v1/join/:game_id", registry.roomHandler())
}
