
import java.util.ArrayList;

class Arbol{
  
  Tablero tablero; 
  ArrayList<Tablero> hijos; //N hijos
  
  Arbol(Tablero tablero){
    this.tablero = tablero;
    this.hijos = new ArrayList<Tablero>(); //64 jugadas posibles
  }
  
  ArrayList<Tablero> hijos(){
     int[][] jugadas = this.tablero.obtenJugadas(); //Obtiene las posiciones de donde se puede colocar una ficha
     
     for(int i = 0; i < jugadas.length; i++){ //Crea los distintos escenarios.
        System.out.println(jugadas[i][0]);
        System.out.println(jugadas[i][0]);
        Tablero t = this.tablero;
        t.setFicha(jugadas[i][0], jugadas[i][1]);
        this.hijos.add(t);
     }
     
     return hijos;
  }
  
}
