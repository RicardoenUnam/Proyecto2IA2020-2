class Arbol{
  
  Tablero tablero; 
  Tablero[] hijos;
  
  Arbol(Tablero tablero){
    this.tablero = tablero;
    this.hijos = new Tablero[64]; //64 jugadas posibles
  }
  
  Arbol[] hijos(){
     int[][] jugadas = this.tablero.obtenJugadas(); //Obtiene las posiciones de donde se puede colocar una ficha
     
     for(int i = 0; i < jugadas.length; i++){
        System.out.println(jugadas[i][0]);
     }
     
     return null;
  }
  
}
