import movimientos.*
import tanque.*
import configuraciones.*
import wollok.game.*
import tablero.*
import juego.*

class Bala {
	var property image
	var property direccion = objeto.direccion()
	var property objeto
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
		//game.onCollideDo(self , {algo => algo.detener()})
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
	var property direccion = "sur"
	var property vidas = 3
	const property color
	var property cargado = true
	const movimiento = new MovimientoTanque()
	
	method image() { return "tanque" + color + self.direccion() + ".png"}	
	
	method iniciarAtaque() {
		game.onTick(1000, "ataque", {self.atacar()})
	}
	
	method atacar() {
		const bala = new Bala(image="bala.png", objeto = self)
		game.addVisual(bala)
		bala.movDisparo()
		game.onCollideDo(bala, {algo => algo.impacto(bala)})
	}
	
	method recibirDanio() {
		if(self.estaVivo()){
			vidas = 0.max(vidas - 1)
			if (vidas == 0) {
				vidas = 0
				self.desaparecer()
			}
		}
	}
	
	method desaparecer(){
		game.removeVisual(self)
	}
	
	method estaVivo() = vidas >= 1
	
	method impacto(unaBala){
		self.recibirDanio()
 		game.removeVisual(unaBala)
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
