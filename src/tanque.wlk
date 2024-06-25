import wollok.game.*
import movimientos.*
import clases.*
import juego.*
import sonidos.*
import configuraciones.*
import tablero.*

object tanque{
	var property position
	var property direccion = "norte"
	var property image = self.direccion()
	var property vidas = 3
	const movimiento = new MovimientoTanque()
	var property cargado = true
	const property esEnemigo = false
	const property esMuro = true
	const property esAliado = true
	const id = 0
	
	method image() { return "tanque" + self.direccion() + ".png"}
	
	// El método recibidanio, el tanque aliado, resta vida cada vez que colisiona con una bala
	method recibirDanio(){
		vidas -= 1
		//actualiza los corazones segun la vida del tanque aliado
		if(self.vidas() == 2){
			game.removeVisual(corazon3)
		}else if(self.vidas()==1){
			game.removeVisual(corazon2)
		}else if(self.vidas()==0){
			game.removeVisual(corazon1)
			self.desaparecer()
		}
	}
	//Crea una explosion que cuando el tanque aliado muere, aparece una explosion
	method desaparecer(){
		const explosion = new Explosion (position = self.position())
		game.removeVisual(self)
        game.addVisual(explosion)    
	}
	
	method estaVivo() = vidas >= 1
	//Cuando una bala impacta al tanque aliado, se ejecuta el metodo recibir danio y si la vida es menor a 0, se termina el juego
	method impacto(unaBala){
		self.recibirDanio()
 		if (not self.estaVivo()){
 			configuracion.perder()
 		}
 	}
	
	method irAlInicio() { position = game.at(1,0) }
	method mirarDestino(destino) { direccion = destino } 
	
	
	method moverArriba(){
		if (self.position().y() < game.height()-2){
			if (!game.getObjectsIn(position.up(1)).any({o => o.esMuro()})){
				movimiento.arriba(self) 
			}else{
				self.position()
			}
		}
	}
	
	method moverAbajo(){
		if (self.position().y()!= 0)
			if (!game.getObjectsIn(position.down(1)).any({o => o.esMuro()})){
				movimiento.abajo(self) 
			}else{
				self.position()
		}
	}
	
	method moverDerecha() { 
		if(self.position().x()< game.width()-1)
		if (!game.getObjectsIn(position.right(1)).any({o => o.esMuro()}))
		     movimiento.derecha(self)
		else self.position()
	}
	
	method moverIzquierda() { 
		if(self.position().x()>0)
		if (!game.getObjectsIn(position.left(1)).any({o => o.esMuro()}))
		movimiento.izquierda(self)
		else self.position()
	}
		
	//Crea una instancia de bala cada vez que dispara	
	method disparar(){
        const bala = new Bala(image="bala.png", objeto = self,tick = "disparoPersonaje" + id.toString())
        game.addVisual(bala)
        bala.disparar()
        musica.disparo()
        game.onCollideDo(bala,{algo => if(algo.esEnemigo())algo.impacto(bala)})
     }
}
