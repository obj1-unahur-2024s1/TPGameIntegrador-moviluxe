import wollok.game.*

object musicaFondo {
	
	const fondo = game.sound("fondo.mp3")
	
	method iniciarMusica(){
		fondo.shouldLoop(true)
		fondo.volume(0.1)
		game.schedule(500, { fondo.play()} )
	}
	
	method detenerMusica(){
		fondo.pause()
	}
	
	method resumirCancion(){
		fondo.resume()
	}
	
}

object musica {
	
	method gameOver() {
		const gameOver = game.sound("gameOver.mp3")
		gameOver.volume(0.3)
		gameOver.play()
	}
	
	method disparo()  {
		const disparo = game.sound("disparo.mp3")
		disparo.volume(0.2)
		disparo.play()
	}
	
	method musicaVictoria(){
		const victoria = game.sound("victoria.mp3")
		victoria.volume(0.2)
		victoria.play()
	}
	
}