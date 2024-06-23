import wollok.game.*
import tanque.*
import clases.*
import configuraciones.*
import tablero.*
const corazon1= new Corazon(position=game.at(0,19))
const corazon2= new Corazon(position=game.at(1,19))
const corazon3= new Corazon(position=game.at(2,19))

object juego {
	
	method iniciar(){
		game.title("WAR TANK")
		game.width(20)
		game.height(20)
		game.cellSize(32)
		game.boardGround("nivel1.jpg")
		game.addVisual(corazon1)
		game.addVisual(corazon2)
		game.addVisual(corazon3)
		tanque.irAlInicio()
		game.addVisual(tanque)
		tablero.dibujarMuros()
		tablero.agregarEnemigos()
		configuracion.teclado()
		game.start()
	}
	
	method posicionAleatoria()= game.at(
		0.randomUpTo(game.width()),
		0.randomUpTo(game.height())
	)
}