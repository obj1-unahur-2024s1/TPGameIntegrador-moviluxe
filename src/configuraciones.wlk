import tanque.*
import wollok.game.*
import movimientos.*
import clases.*
import tablero.*

object configuracion {
	
		method teclado(){
		keyboard.space().onPressDo {
			if (tanque.cargado()){
				tanque.cargado(false)
				const bala = new Bala(image="bala.png")
	    		game.addVisual(bala)
				bala.disparar()
				game.schedule(2000,{tanque.cargado(true)})
			}
		}	
		
		keyboard.up().onPressDo {tanque.moverArriba()}
		keyboard.down().onPressDo {tanque.moverAbajo()}
		keyboard.right().onPressDo {tanque.moverDerecha()}
		keyboard.left().onPressDo {tanque.moverIzquierda()}
	}
	
}
