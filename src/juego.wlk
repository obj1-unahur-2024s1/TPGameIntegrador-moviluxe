import wollok.game.*
import sonidos.*
import tanque.*
import clases.*
import configuraciones.*
import tablero.*
const corazon1= new Corazon(position=game.at(0,19))
const corazon2= new Corazon(position=game.at(1,19))
const corazon3= new Corazon(position=game.at(2,19))

object juego {
	var nivel = 1
	method nivel() = nivel
	method siguienteNivel() { nivel += 1}
	
	method primerNivel(){
		game.boardGround("nivel1.jpg")
		game.addVisual(corazon1)
		game.addVisual(corazon2)
		game.addVisual(corazon3)
		tanque.irAlInicio()
		game.addVisual(tanque)
		tablero.dibujarMuros()
		tablero.agregarEnemigos()
		configuracion.teclado()
	}
	
	method iniciar(){
		game.title("WAR TANK")
		game.width(20)
		game.height(20)
		game.cellSize(32)
		game.addVisual(pantallaDeInicio)
		keyboard.enter().onPressDo{
			pantallaDeInicio.iniciarJuego()
			self.primerNivel()
		musica.fondo()
		}
		game.start()
	}
	
}
