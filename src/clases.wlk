import movimientos.*
import tanque.*
import configuraciones.*
import wollok.game.*
import tablero.*
import juego.*

class Bala {
	var property image
    var property direccion = objeto.direccion()
    const objeto
    const tick 
    var property position = 
        if(direccion == "norte"){
            objeto.position().up(1)
         }else if(direccion == "sur"){
            objeto.position().down(1)
        }else if(tanque.direccion() == "este"){
            objeto.position().right(1)
        }else{
            objeto.position().left(1)
        }


    method disparar(){
           game.onTick(300, tick ,{
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
        game.removeTickEvent(tick)
        game.removeVisual(self)
    }

}

class Corazon {
	const property position 
	var property esMuro = false
    const property esEnemigo = false
	method image() = "corazon.png"
}

class TanqueEnemigo {
	
	var property position 
    var property image = self.direccion()
    var property direccion = "sur"
    var property vidas = 3
    const property color
    var property cargado = true
    var property esEnemigo = true
    const property esMuro = true
    const movimiento = new MovimientoTanque()

    method image() { return "tanque" + color + self.direccion() + ".png"}

    method iniciarAtaque() {
        game.onTick(4000, "ataque", {self.atacar()})
        game.schedule(2000,{self.cargado(true)})
    }

    method atacar() {
        if (self.cargado())
                self.cargado(false)
        const bala = new Bala(image="bala.png", objeto = self, tick = "balaenemiga")
        game.addVisual(bala)
        bala.disparar()
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
        const explosion = new Explosion (position = self.position())
        game.removeVisual(self)
        game.addVisual(explosion)    
    }

    method estaVivo() = vidas >= 1

    method impacto(unaBala){
        self.recibirDanio()
         game.removeVisual(unaBala)
         
    }
    
    method direccionAleatoria() {

        const elegirDireccion= ["norte","sur","oeste","este"]

        return 
        elegirDireccion.get(elegirDireccion.size().randomUpTo(0).truncate(0).min(3))
    }

    method movimientoEnemigos(){

        game.onTick(1000, "movimientoEnemigos", {

            direccion = self.direccionAleatoria()
            if(self.direccion() == "norte"){
                self.moverArriba()
               }else if(self.direccion() == "sur"){
                   self.moverAbajo()
               }else if(self.direccion() == "este"){
                   self.moverDerecha()
               }else{
                   self.moverIzquierda()
            }
        })

}
    method moverArriba(){
        if (self.position().y() < game.height()-3){
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

class Explosion {
    var property position
    var image = "burst.png"
    var property esMuro = false
    const property esEnemigo = false

    method image() = image


}