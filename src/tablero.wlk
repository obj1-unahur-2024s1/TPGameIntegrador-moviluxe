import wollok.game.*
import clases.*
import juego.*
import tanque.*
import configuraciones.*

class ElementosDelTablero {
	
	var property esMuro
    const property esEnemigo
    const property esAliado 
	
	method detener() {	}
	
}

object tablero {
	
	const property enemigosDelMapa = []
	
	//Se genera los elementos del mapa
	method dibujarElementos() {
		self.dibujarCronometro()
		self.dibujarMuros()
		self.dibujarAguas()
		self.dibujarPlantitas()
	}
	
	method dibujarMuros(){
		self.agregarMuroEn(15,2, "ladrillos")
		self.agregarMuroEn(12,17,"ladrillos")
		self.agregarMuroEn(11,17,"ladrillos")
		self.agregarMuroEn(10,17,"ladrillos")
		self.agregarMuroEn(9,17,"ladrillos")
		self.agregarMuroEn(8,17,"ladrillos")
		self.agregarMuroEn(7,17,"ladrillos")
		self.agregarMuroEn(18,10,"ladrillos")
		self.agregarMuroEn(18,11,"ladrillos")
		self.agregarMuroEn(18,12,"ladrillos")
		self.agregarMuroEn(18,13,"ladrillos")
		self.agregarMuroEn(17,13,"ladrillos")
		self.agregarMuroEn(16,13,"ladrillos")
		self.agregarMuroEn(15,13,"ladrillos")
		self.agregarMuroEn(4,13,"ladrillos")
		self.agregarMuroEn(3,13,"ladrillos")
		self.agregarMuroEn(2,13,"ladrillos")
		self.agregarMuroEn(1,13,"ladrillos")
		self.agregarMuroEn(1,12,"ladrillos")
		self.agregarMuroEn(1,11,"ladrillos")
		self.agregarMuroEn(1,10,"ladrillos")
		self.agregarMuroEn(11,12,"ladrillos")
		self.agregarMuroEn(10,12,"ladrillos")
		self.agregarMuroEn(9,12,"ladrillos")
		self.agregarMuroEn(8,12,"ladrillos")
		self.agregarMuroEn(13,11,"ladrillos")
		self.agregarMuroEn(12,11,"ladrillos")
		self.agregarMuroEn(11,11,"ladrillos")
		self.agregarMuroEn(10,11,"ladrillos")
		self.agregarMuroEn(9,11,"ladrillos")
		self.agregarMuroEn(8,11,"ladrillos")
		self.agregarMuroEn(7,11,"ladrillos")
		self.agregarMuroEn(6,11,"ladrillos")
		self.agregarMuroEn(11,10,"ladrillos")
		self.agregarMuroEn(10,10,"ladrillos")
		self.agregarMuroEn(9,10,"ladrillos")
		self.agregarMuroEn(8,10,"ladrillos")
		self.agregarMuroEn(6,8,"ladrillos")
		self.agregarMuroEn(5,8,"ladrillos")
		self.agregarMuroEn(4,8,"ladrillos")
		self.agregarMuroEn(6,7,"ladrillos")
		self.agregarMuroEn(5,7,"ladrillos")
		self.agregarMuroEn(4,7,"ladrillos")
		self.agregarMuroEn(6,6,"ladrillos")
		self.agregarMuroEn(5,6,"ladrillos")
		self.agregarMuroEn(4,6,"ladrillos")
		self.agregarMuroEn(6,5,"ladrillos")
		self.agregarMuroEn(5,5,"ladrillos")
		self.agregarMuroEn(4,5,"ladrillos")
		self.agregarMuroEn(5,4,"ladrillos")
		self.agregarMuroEn(4,4,"ladrillos")
		self.agregarMuroEn(5,3,"ladrillos")
		self.agregarMuroEn(4,3,"ladrillos")
		self.agregarMuroEn(5,2,"ladrillos")
		self.agregarMuroEn(4,2,"ladrillos")
		self.agregarMuroEn(14,2,"ladrillos")
		self.agregarMuroEn(15,3,"ladrillos")
		self.agregarMuroEn(14,3,"ladrillos")
		self.agregarMuroEn(15,4,"ladrillos")
		self.agregarMuroEn(14,4,"ladrillos")
		self.agregarMuroEn(15,5,"ladrillos")
		self.agregarMuroEn(14,5,"ladrillos")
		self.agregarMuroEn(13,5,"ladrillos")
		self.agregarMuroEn(13,6,"ladrillos")
		self.agregarMuroEn(14,6,"ladrillos")
		self.agregarMuroEn(15,6,"ladrillos")
		self.agregarMuroEn(15,7,"ladrillos")
		self.agregarMuroEn(14,7,"ladrillos")
		self.agregarMuroEn(13,7,"ladrillos")
		self.agregarMuroEn(15,8,"ladrillos")
		self.agregarMuroEn(14,8,"ladrillos")
		self.agregarMuroEn(13,8,"ladrillos")
		self.agregarMuroEn(4, 17, "piedra")
		self.agregarMuroEn(7, 13, "piedra")
		self.agregarMuroEn(8, 13, "piedra")
		self.agregarMuroEn(9, 13, "piedra")
		self.agregarMuroEn(10, 13, "piedra")
		self.agregarMuroEn(11, 13, "piedra")
		self.agregarMuroEn(12, 13, "piedra")
		self.agregarMuroEn(7, 12, "piedra")
		self.agregarMuroEn(12, 12, "piedra")
		self.agregarMuroEn(7, 10, "piedra")
		self.agregarMuroEn(12, 10, "piedra")
		self.agregarMuroEn(4, 9, "piedra")
		self.agregarMuroEn(5, 9, "piedra")
		self.agregarMuroEn(6, 9, "piedra")
		self.agregarMuroEn(7, 9, "piedra")
		self.agregarMuroEn(8, 9, "piedra")
		self.agregarMuroEn(9, 9, "piedra")
		self.agregarMuroEn(10, 9, "piedra")
		self.agregarMuroEn(11, 9, "piedra")
		self.agregarMuroEn(12, 9, "piedra")
		self.agregarMuroEn(13, 9, "piedra")
		self.agregarMuroEn(14, 9, "piedra")
		self.agregarMuroEn(15, 9, "piedra")
		self.agregarMuroEn(7, 8, "piedra")
		self.agregarMuroEn(8, 8, "piedra")
		self.agregarMuroEn(9, 8, "piedra")
		self.agregarMuroEn(10, 8, "piedra")
		self.agregarMuroEn(11, 8, "piedra")
		self.agregarMuroEn(12, 8, "piedra")
		self.agregarMuroEn(15,17,"piedra")
	}
	
	method dibujarAguas(){
		self.agregarMuroEn(10, 2, "agua")
		self.agregarMuroEn(9, 2, "agua")
		self.agregarMuroEn(8, 2, "agua")
		self.agregarMuroEn(10, 6, "agua")
		self.agregarMuroEn(11, 6, "agua")
		self.agregarMuroEn(8, 6, "agua")
		self.agregarMuroEn(9, 6, "agua")
		self.agregarMuroEn(9, 7, "agua")
		self.agregarMuroEn(8, 7, "agua")
		self.agregarMuroEn(10, 7, "agua")
		self.agregarMuroEn(11, 7, "agua")
		self.agregarMuroEn(6, 17, "agua")
		self.agregarMuroEn(5, 17, "agua")
		self.agregarMuroEn(13, 17, "agua")
		self.agregarMuroEn(14, 17, "agua")
		self.agregarMuroEn(14, 16, "agua")
		self.agregarMuroEn(14, 15, "agua")
		self.agregarMuroEn(15, 15, "agua")
		self.agregarMuroEn(16, 11, "agua")
		self.agregarMuroEn(16, 12, "agua")
		self.agregarMuroEn(17, 11, "agua")
		self.agregarMuroEn(17, 12, "agua")
		self.agregarMuroEn(14, 16, "agua")
		self.agregarMuroEn(5, 16, "agua")
		self.agregarMuroEn(4, 15, "agua")
		self.agregarMuroEn(5, 15, "agua")
		self.agregarMuroEn(5, 15, "agua")
		self.agregarMuroEn(2, 12, "agua")
		self.agregarMuroEn(3, 12, "agua")
		self.agregarMuroEn(2, 11, "agua")
		self.agregarMuroEn(3, 11, "agua")
	}

	method dibujarPlantitas() {
		self.agregarPlantitaEn(6, 16)
		self.agregarPlantitaEn(7, 16)
		self.agregarPlantitaEn(6, 15)
		self.agregarPlantitaEn(7, 15)
		self.agregarPlantitaEn(4, 16)
		self.agregarPlantitaEn(10, 3)
		self.agregarPlantitaEn(11, 3)
		self.agregarPlantitaEn(11, 2)
		self.agregarPlantitaEn(12, 16)
		self.agregarPlantitaEn(12, 15)
		self.agregarPlantitaEn(13, 16)
		self.agregarPlantitaEn(13, 10)
		self.agregarPlantitaEn(14, 10)
		self.agregarPlantitaEn(15, 10)
		self.agregarPlantitaEn(16, 10)
		self.agregarPlantitaEn(16, 9)
		self.agregarPlantitaEn(4, 11)
		self.agregarPlantitaEn(2, 10)
		self.agregarPlantitaEn(3, 10)
		self.agregarPlantitaEn(4, 10)
		self.agregarPlantitaEn(5, 10)
		self.agregarPlantitaEn(6, 10)
	}	
	
	method dibujarCronometro(){
		cronometro.mostrar()
		cronometro.iniciar()
	}
	
	method resetearCronometro(){
		cronometro.detener()
		cronometro.resetear()
	}
	
	//se instancia los objetos visuales de cada elemento
	method agregarPlantitaEn(x,y) {
		const plantita = new Obstaculo(esAliado = false, esEnemigo = false, position = game.at(x,y), esMuro = false, image = "plantitas.png")
		game.addVisual(plantita)
	}
	method agregarMuroEn(x, y, material) {
		const muro = new Obstaculo(esAliado = false, esEnemigo = false, position = game.at(x,y), esMuro = true, image= material + ".png")
		game.addVisual(muro)
		game.onCollideDo(muro, {algo => algo.detener()})
	}
	
	method agregarEnemigos() {
        //self.agregarEnemigosEn(17,18,"azul")
        //self.agregarEnemigosEn(2,17,"naranja")
        //self.agregarEnemigosEn(17,1,"violeta")
        self.agregarEnemigosEn(10,5,"azul")
        self.agregarEnemigosEn(18,6,"naranja")
        self.agregarEnemigosEn(0,4,"violeta")
    }

	//se instancia los tanques enemigos y se agregan con sus respectivos colores y en su posicion
    method agregarEnemigosEn(x,y,color){
        const enemigo = new TanqueEnemigo(esAliado = false, esEnemigo = true, esMuro = true, position= game.at(x,y), color= color)
        enemigosDelMapa.add(enemigo)
        game.addVisual(enemigo)
        game.onCollideDo(enemigo, {algo => algo.detener()})
        enemigo.movimientoEnemigos()
		enemigo.iniciarAtaque()
    }
    
    method eliminarEnemigo(unEnemigo){
    	enemigosDelMapa.remove(unEnemigo)
    }
    
}

object cronometro{
    var tiempo = 300
    const unidad = new Digito(esMuro = true, esAliado = false, esEnemigo = false, position= game.at(19,19))
    const decena = new Digito(esMuro = true, esAliado = false, esEnemigo = false, position= game.at(18,19))
	const centena = new Digito(esMuro = true, esAliado = false, esEnemigo = false, position= game.at(17,19))
	
    method mostrar(){
        game.addVisual(decena)
        game.addVisual(unidad)
        game.addVisual(centena)
      }

    method reset(){
        self.detener()
        tiempo = 300
        //Detener y vuelva a 300
    }


    method iniciar(){
        game.onTick(1000,"Temporizador",{=>
            tiempo= tiempo - 1
            var un = tiempo%10
            var de = (tiempo/10).truncate(0) % 10
            var cen = (tiempo/100).truncate(0) 
            unidad.valor(un)
            decena.valor(de)
            centena.valor(cen)
            if (tiempo == 0 || tablero.enemigosDelMapa().isEmpty()){
                if (tablero.enemigosDelMapa().isEmpty()){
                	configuracion.pasarAlProximo()
                }else{
                    configuracion.perder()
                }
            }
        })
        //Decrementar desde 300 hasta 0 con onTick

        //Logica para obtener el tiempo de la unidad y la decena
    }

    method detener(){
        //Remover el onTick
        game.removeTickEvent("Temporizador")
    }

    method resetear(){
    	//resetea el tiempo en 300
        tiempo = 300
    }

}