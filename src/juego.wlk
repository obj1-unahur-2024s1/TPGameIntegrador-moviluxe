import wollok.game.*
import sonidos.*
import tanque.*
import clases.*
import configuraciones.*
import tablero.*
import pantalla.* 
import sonidos.*

const corazon1= new Corazon(esAliado = false, esMuro = true, esEnemigo = false ,position=game.at(0,19))
const corazon2= new Corazon(esAliado = false, esMuro = true, esEnemigo = false ,position=game.at(1,19))
const corazon3= new Corazon(esAliado = false, esMuro = true, esEnemigo = false ,position=game.at(2,19))

object juego {
	var property esNivelUno = true
	
	method primerNivel(){
		game.addVisual(fondo)
		game.addVisual(corazon1)
		game.addVisual(corazon2)
		game.addVisual(corazon3)
		tanque.irAlInicio()
		game.addVisual(tanque)
		tablero.dibujarElementos()
		tablero.agregarEnemigos()
		configuracion.teclado()
	}
	
	method resetear(){
		game.clear()
		game.addVisual(bienvenida)
		keyboard.enter().onPressDo{
			musicaFondo.resumirCancion()
			game.removeVisual(bienvenida)
			game.clear()
			self.primerNivel()
		}
		keyboard.q().onPressDo{
			game.stop()
		}
	}
	
	method menuDeInicio(){
		musicaFondo.iniciarMusica()
		game.addVisual(bienvenida)
		keyboard.enter().onPressDo{
			game.removeVisual(bienvenida)
			game.clear()
			self.primerNivel()
		}
		keyboard.q().onPressDo{
			game.stop()
		}
	}
	
	method iniciar(){
		game.title("WOLLOK TANK")
		game.width(20)
		game.height(20)
		game.cellSize(32)
		self.menuDeInicio()
		game.start()
	}
	
}