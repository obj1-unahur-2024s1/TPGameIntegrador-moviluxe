import wollok.game.*
import tanque.*
import configuraciones.*
//import clases.*

class MovimientoGral {
	
	
	method posicionarHaciaDireccion(personaje,direccion){
		if(personaje.direccion()!= direccion) 
		personaje.mirarDestino(direccion) 
		else  personaje.position()
		
		}
	
	
	method arriba(personaje) {
		 self.posicionarHaciaDireccion(personaje,"norte")
		 personaje.position(personaje.position().up(1)) 
    }

    method abajo(personaje) {
    	self.posicionarHaciaDireccion(personaje,"sur")
		 personaje.position(personaje.position().down(1)) 
    }
    
    method derecha(personaje) {
    	self.posicionarHaciaDireccion(personaje,"este")
		 personaje.position(personaje.position().right(1))
    }
    
    method izquierda(personaje) {
    	self.posicionarHaciaDireccion(personaje,"oeste")
		 personaje.position(personaje.position().left(1))
		 
	}
}


class MovimientoTanque inherits MovimientoGral {}

 