import wollok.game.*

class Pantalla {
	var property image 
	var property position 
}

const gameOver = new Pantalla(image = "gameOver.png", position = game.origin())
const bienvenida = new Pantalla(image = "fondoBienvenida.png", position = game.origin())
const siguienteNivel = new Pantalla(image = "siguienteNivel.png", position = game.origin())

object fondo {
	const property image = "fondo.png"
	const property position = game.origin()
	const property esMuro = false
	const property esEnemigo = false
}