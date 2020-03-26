import java.util.ArrayList;

class Arbol{
  
  Tablero tablero; 
  ArrayList<Tablero> hijos; //N hijos
  
  Arbol(Tablero tablero){
    this.tablero = tablero;
    this.hijos = new ArrayList<Tablero>(); // jugadas posibles
  }
  
  ArrayList<Tablero> hijos(){
     ArrayList<int[]> jugadas = this.tablero.obtenJugadas(); //Obtiene las posiciones de donde se puede colocar una ficha
     
     for(int i = 0; i < jugadas.size(); i++){ //Crea los distintos escenarios.
        System.out.println(jugadas.get(i));
        System.out.println(jugadas.get(i));        
        Tablero t = new Tablero();
        t = this.tablero.getTablero();
        //t.setFicha(jugadas.get(i)[0], jugadas.get(i)[1]);
        this.hijos.add(t);
     }
     
     return hijos;
  }
  
}
