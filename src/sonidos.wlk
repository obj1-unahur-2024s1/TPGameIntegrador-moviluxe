import wollok.game.*

object musica {
	method disparo()  {
		game.sound("disparo.mp3").play()
	}
	
	method fondo() {
	const fondo = game.sound("fondo.mp3")
	fondo.shouldLoop(true)
	game.schedule(500, { fondo.play()} )
	fondo.volume(0.1)
	}
}