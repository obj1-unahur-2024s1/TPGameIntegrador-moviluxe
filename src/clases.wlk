import movimientos.*
import tanque.*
import configuraciones.*
import wollok.game.*
import tablero.*
import juego.*

class Bala {
	var property image
	var property direccion = tanque.direccion()
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
		
	method movDisparo(){
		game.onTick(1000 , "moverse",{self.disparar()})
		game.onCollideDo(self , {algo => algo.detener()})
		game.onCollideDo(self, {algo => algo.impacto(self)})
	}

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
	
	method impacto(unaBala) {
		
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
	var property position = null
	var property image = self.direccion()
	var property direccion = "oeste"
	var property vidas = 3
	const property color
	var property cargado = true
	const movimiento = new MovimientoTanque()
	
	method image() { return "tanque" + color + self.direccion() + ".png"}	
	
	method recibirDanio() {
		vidas = (vidas - 1).max(0)
	}
	
	method desaparecer(){
		if(!self.estaVivo() && game.hasVisual(self)){
			game.removeVisual(self)
		}
	}
	
	method estaVivo() = vidas >= 1
	
	method impacto(unaBala){
		self.recibirDanio()
 		self.desaparecer()
 		game.removeVisual(unaBala)
 	}
	
	method serImpactado() { 
		self.recibirDanio()
	}
	/*
	method darUnPaso(ubicacionTanque){
		if (self.position().x() < ubicacionTanque.x()){
			self.position(self.position().right(1))
		}
		else if (self.position().x() > ubicacionTanque.x()){
			self.position(self.position().left(1))
		}
		else if (self.position().y() < ubicacionTanque.y()){
			self.position(self.position().up(1))
		}
		else if (self.position().y() > ubicacionTanque.y()){
			self.position(self.position().down(1))
		}
	}
	*/
}
