import tanque.*
import wollok.game.*
import movimientos.*
import clases.*
import tablero.*
import pantalla.*
import sonidos.*
import nivel2.*
import juego.*

object configuracion {
	
	method teclado(){
        keyboard.space().onPressDo {
            if (tanque.cargado()){
                tanque.cargado(false)
                tanque.disparar()
                game.schedule(2000,{tanque.cargado(true)})
            }
		}	
		keyboard.up().onPressDo {tanque.moverArriba()}
		keyboard.down().onPressDo {tanque.moverAbajo()}
		keyboard.right().onPressDo {tanque.moverDerecha()}
		keyboard.left().onPressDo {tanque.moverIzquierda()}
	}
	
	method pasarAlProximo(){
		game.addVisual(siguienteNivel)
		juego.esNivelUno(false)
		keyboard.enter().onPressDo{
			nivelDos.iniciar()
		}
	}
	
	method ganar() {
		musicaFondo.detenerMusica()
		game.clear()
		game.addVisual(gameOver)
		keyboard.enter().onPressDo{
			game.stop()
		}
	}
	
	method perder(){
		musicaFondo.detenerMusica()
		musica.gameOver()
		game.clear()
		game.addVisual(gameOver)
		keyboard.enter().onPressDo{
			game.stop()
		}
	}
}
