import wollok.game.*
import movimientos.*
import clases.*
import juego.*

object tanque{
	var property position
	var property direccion = "norte"
	var property image = self.direccion()
	var property vidas = 3
	const movimiento = new MovimientoTanque()
	var property cargado = true
	
	method image() { return "tanque" + self.direccion() + ".png"}
	
	method perderVida(){
		vidas -= 1
		if(self.vidas() == 2){
			game.removeVisual(corazon3)
		}else if(self.vidas()==1){
			game.removeVisual(corazon2)
		}else if(self.vidas()==0){
				
		}
	}
	method detener(){}
	method irAlInicio() { 
		position = game.origin()
	}
	method mirarDestino(destino) { direccion = destino} 
	
	method moverArriba(){
		if (self.position().y() < game.height()-2){
			if (!game.getObjectsIn(position.up(1)).any({o => o.esMuro()})){
				movimiento.arriba(self) 
			}else{self.position()}
		}
	}
	
	method moverAbajo(){
		if (self.position().y()!= 0)
			if (!game.getObjectsIn(position.down(1)).any({o => o.esMuro()})){
				movimiento.abajo(self) 
			}else{self.position()
		}
	}
	
	method moverDerecha() { if(self.position().x()< game.width()-1)
		if (!game.getObjectsIn(position.right(1)).any({o => o.esMuro()}))
		     movimiento.derecha(self)
		else self.position()}
	
	method moverIzquierda() { if(self.position().x()>0)
		if (!game.getObjectsIn(position.left(1)).any({o => o.esMuro()}))
		movimiento.izquierda(self)
		else self.position()}
}
