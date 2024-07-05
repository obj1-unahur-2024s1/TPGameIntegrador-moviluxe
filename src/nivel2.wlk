import wollok.game.*
import sonidos.*
import tanque.*
import clases.*
import configuraciones.*
import tablero.*
import pantalla.* 
import sonidos.*
import juego.*

object nivelDos{
	const property esNivelUno = false
	
	method iniciar() {
		game.clear()
		game.addVisual(fondo)
		game.addVisual(corazon1)
		game.addVisual(corazon2)
		game.addVisual(corazon3)
		tanque.irAlInicio()
		game.addVisual(tanque)
		self.dibujarElementos()
		self.agregarEnemigos()
		configuracion.teclado()
	}
	
	method dibujarElementos(){
		self.dibujarCronometro()
		self.dibujarMuros()
		self.dibujarAguas()
		self.dibujarPlantitas()
	}	
	
	method dibujarMuros(){
		tablero.agregarMuroEn(1,11, "ladrillos")
		tablero.agregarMuroEn(1,12,"ladrillos")
		tablero.agregarMuroEn(1,13,"ladrillos")
		tablero.agregarMuroEn(1,14,"ladrillos")
		tablero.agregarMuroEn(1,15,"ladrillos")
		tablero.agregarMuroEn(1,16,"ladrillos")
		tablero.agregarMuroEn(1,17,"ladrillos")
		tablero.agregarMuroEn(2,11,"ladrillos")
		tablero.agregarMuroEn(2,12,"ladrillos")
		tablero.agregarMuroEn(2,13,"ladrillos")
		tablero.agregarMuroEn(2,14,"ladrillos")
		tablero.agregarMuroEn(2,15,"ladrillos")
		tablero.agregarMuroEn(2,16,"ladrillos")
		tablero.agregarMuroEn(2,17,"ladrillos")
		tablero.agregarMuroEn(5,11,"ladrillos")
		tablero.agregarMuroEn(5,12,"ladrillos")
		tablero.agregarMuroEn(5,13,"ladrillos")
		tablero.agregarMuroEn(5,14,"ladrillos")
		tablero.agregarMuroEn(5,15,"ladrillos")
		tablero.agregarMuroEn(5,16,"ladrillos")
		tablero.agregarMuroEn(5,17,"ladrillos")
		tablero.agregarMuroEn(8,10,"ladrillos")
		tablero.agregarMuroEn(8,12,"ladrillos")
		tablero.agregarMuroEn(8,13,"ladrillos")
		tablero.agregarMuroEn(8,14,"ladrillos")
		tablero.agregarMuroEn(8,15,"ladrillos")
		tablero.agregarMuroEn(8,16,"ladrillos")
		tablero.agregarMuroEn(8,17,"ladrillos")
		tablero.agregarMuroEn(11,10,"ladrillos")
		tablero.agregarMuroEn(11,12,"ladrillos")
		tablero.agregarMuroEn(11,13,"ladrillos")
		tablero.agregarMuroEn(11,14,"ladrillos")
		tablero.agregarMuroEn(11,15,"ladrillos")
		tablero.agregarMuroEn(11,16,"ladrillos")
		tablero.agregarMuroEn(11,17,"ladrillos")
		tablero.agregarMuroEn(14,11,"ladrillos")
		tablero.agregarMuroEn(14,12,"ladrillos")
		tablero.agregarMuroEn(14,13,"ladrillos")
		tablero.agregarMuroEn(14,14,"ladrillos")
		tablero.agregarMuroEn(14,15,"ladrillos")
		tablero.agregarMuroEn(14,16,"ladrillos")
		tablero.agregarMuroEn(14,17,"ladrillos")
		tablero.agregarMuroEn(17,11,"ladrillos")
		tablero.agregarMuroEn(17,12,"ladrillos")
		tablero.agregarMuroEn(17,13,"ladrillos")
		tablero.agregarMuroEn(17,14,"ladrillos")
		tablero.agregarMuroEn(17,15,"ladrillos")
		tablero.agregarMuroEn(17,16,"ladrillos")
		tablero.agregarMuroEn(17,17,"ladrillos")
		tablero.agregarMuroEn(18,11,"ladrillos")
		tablero.agregarMuroEn(18,12,"ladrillos")
		tablero.agregarMuroEn(18,13,"ladrillos")
		tablero.agregarMuroEn(18,14,"ladrillos")
		tablero.agregarMuroEn(18,15,"ladrillos")
		tablero.agregarMuroEn(18,16,"ladrillos")
		tablero.agregarMuroEn(18,17,"ladrillos")
		tablero.agregarMuroEn(8,10,"ladrillos")
		tablero.agregarMuroEn(11,10,"ladrillos")
		tablero.agregarMuroEn(2,9,"ladrillos")
		tablero.agregarMuroEn(3,9,"ladrillos")
		tablero.agregarMuroEn(4,9,"ladrillos")
		tablero.agregarMuroEn(5,9,"ladrillos")
		tablero.agregarMuroEn(2,8,"ladrillos")
		tablero.agregarMuroEn(3,8,"ladrillos")
		tablero.agregarMuroEn(4,8,"ladrillos")
		tablero.agregarMuroEn(5,8,"ladrillos")
		tablero.agregarMuroEn(8,7,"ladrillos")
		tablero.agregarMuroEn(11,7,"ladrillos")
		tablero.agregarMuroEn(2,2,"ladrillos")
		tablero.agregarMuroEn(2,3,"ladrillos")
		tablero.agregarMuroEn(2,4,"ladrillos")
		tablero.agregarMuroEn(2,5,"ladrillos")
		tablero.agregarMuroEn(2,6,"ladrillos")
		tablero.agregarMuroEn(5,2,"ladrillos")
		tablero.agregarMuroEn(5,3,"ladrillos")
		tablero.agregarMuroEn(5,4,"ladrillos")
		tablero.agregarMuroEn(5,5,"ladrillos")
		tablero.agregarMuroEn(5,6,"ladrillos")
		tablero.agregarMuroEn(8,4,"ladrillos")
		tablero.agregarMuroEn(8,5,"ladrillos")
		tablero.agregarMuroEn(8,6,"ladrillos")
		tablero.agregarMuroEn(8,7,"ladrillos")
		tablero.agregarMuroEn(9,6,"ladrillos")
		tablero.agregarMuroEn(10,6,"ladrillos")
		tablero.agregarMuroEn(11,4,"ladrillos")
		tablero.agregarMuroEn(11,5,"ladrillos")
		tablero.agregarMuroEn(11,6,"ladrillos")
		tablero.agregarMuroEn(11,7,"ladrillos")
		tablero.agregarMuroEn(14,2,"ladrillos")
		tablero.agregarMuroEn(14,3,"ladrillos")
		tablero.agregarMuroEn(14,4,"ladrillos")
		tablero.agregarMuroEn(14,5,"ladrillos")
		tablero.agregarMuroEn(14,6,"ladrillos")
		tablero.agregarMuroEn(17,2,"ladrillos")
		tablero.agregarMuroEn(17,3,"ladrillos")
		tablero.agregarMuroEn(17,4,"ladrillos")
		tablero.agregarMuroEn(17,5,"ladrillos")
		tablero.agregarMuroEn(17,6,"ladrillos")
	}
	
	method dibujarAguas(){
		tablero.agregarMuroEn(0, 9, "agua")
		tablero.agregarMuroEn(1, 9, "agua")
		tablero.agregarMuroEn(18, 9, "agua")
		tablero.agregarMuroEn(19, 9, "agua")
		tablero.agregarMuroEn(9, 5, "agua")
		tablero.agregarMuroEn(10, 5, "agua")
		tablero.agregarMuroEn(9, 4, "agua")
		tablero.agregarMuroEn(10, 4, "agua")
	}
	
	method dibujarPlantitas() {
		tablero.agregarPlantitaEn(9, 13)
		tablero.agregarPlantitaEn(9, 14)
		tablero.agregarPlantitaEn(10, 13)
		tablero.agregarPlantitaEn(10, 14)
		tablero.agregarPlantitaEn(0, 8)
		tablero.agregarPlantitaEn(1, 8)
		tablero.agregarPlantitaEn(18, 8)
		tablero.agregarPlantitaEn(19, 8)
		tablero.agregarPlantitaEn(6, 6)
		tablero.agregarPlantitaEn(7, 6)
		tablero.agregarPlantitaEn(12, 6)
		tablero.agregarPlantitaEn(13, 6)
	}	
	
	method dibujarCronometro(){
		cronometro.mostrar()
		cronometro.iniciar()
	}
	
	method agregarEnemigos() {
		//tablero.agregarEnemigosEn(10,17,"azul")
        //tablero.agregarEnemigosEn(18,18,"naranja")
        tablero.agregarEnemigosEn(3,14,"violeta")
        tablero.agregarEnemigosEn(18,10,"azul")
        tablero.agregarEnemigosEn(10,3,"violeta")
	}
}

