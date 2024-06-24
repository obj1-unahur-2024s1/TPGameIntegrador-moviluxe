import wollok.game.*

object musicaFondo {
	
	const fondo = game.sound("fondo.mp3")
	
	method iniciarMusica(){
		fondo.shouldLoop(true)
		fondo.shouldLoop(true)
		game.schedule(500, { fondo.play()} )
		fondo.volume(0.1)
	}
	
	method detenerMusica(){
		fondo.stop()
	}
	
}

object musica {
	
	method disparo()  {
		game.sound("disparo.mp3").play()
	}
	
}