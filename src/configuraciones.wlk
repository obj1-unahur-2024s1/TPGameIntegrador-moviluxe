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
		tablero.resetearCronometro()
		game.addVisual(siguienteNivel)
		juego.esNivelUno(false)
		keyboard.enter().onPressDo{
			nivelDos.iniciar()
		}
	}
	
	method ganar() {
		musicaFondo.detenerMusica()
		tablero.resetearCronometro()
		game.clear()
		game.addVisual(ganaste)
		musica.musicaVictoria()
		keyboard.enter().onPressDo{
			juego.resetear()
		}
	}
	
	method perder(){
		musicaFondo.detenerMusica()
		tablero.resetearCronometro()
		musica.gameOver()
		game.clear()
		game.addVisual(gameOver)
		keyboard.enter().onPressDo{
			juego.resetear()
		}
	}
}