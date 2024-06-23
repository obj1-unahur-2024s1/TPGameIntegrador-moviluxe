import wollok.game.*

object musica {
	method disparo()  {
		game.sound("disparo.mp3").play()
	}
	
	method fondo() {
<<<<<<< HEAD
		const fondo = game.sound("fondo.mp3")
		fondo.shouldLoop(true)
		game.schedule(500, { fondo.play()} )
		fondo.volume(0.1)
=======
	const fondo = game.sound("fondo.mp3")
	fondo.shouldLoop(true)
	game.schedule(500, { fondo.play()} )
	fondo.volume(0.1)
>>>>>>> 534a3b67d232f1510093554dcca890eb90c2fad5
	}
}