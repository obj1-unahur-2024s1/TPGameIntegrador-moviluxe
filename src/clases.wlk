import movimientos.*
import tanque.*
import configuraciones.*
import wollok.game.*
import tablero.*

class Bala {
	var property image
	var property position = 
		if(tanque.direccion() == "norte"){
			tanque.position().up(1)
		 }else if(tanque.direccion() == "sur"){
			tanque.position().down(1)
		}else if(tanque.direccion() == "este"){
			tanque.position().right(1)
		}else{
			tanque.position().left(1)
		}
	
	var property direccion = tanque.direccion()
	
	method disparar(){
	   	game.onTick(300, "disparo",{
	    	if(self.direccion() == "norte"){
	    		position = position.up(1)
		   	}else if(self.direccion() == "sur"){
		   		position = position.down(1)
		   	}else if(self.direccion() == "este"){
		   		position = position.right(1)
		   	}else{
		   		position = position.left(1)
			}
		})	
	}
	 method detener(){
		game.removeTickEvent("disparo")
		game.removeVisual(self)
	}
}

class Corazon {
	const property position 
	method image() = "corazon.png"
}

class TanqueEnemigo {
	
}
