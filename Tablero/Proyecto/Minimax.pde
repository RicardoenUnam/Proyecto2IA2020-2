class Minimax{

  Arbol arbol;
  
  int[][] pesos = { {4,3,3,3,3,3,3,4},
                    {3,2,3,3,3,3,2,3}, 
                    {3,3,3,2,2,3,3,3}, 
                    {3,3,2,1,1,2,3,3}, 
                    {3,3,2,1,1,2,3,3}, 
                    {3,3,3,2,2,3,3,3},
                    {3,2,3,3,3,3,2,3}, 
                    {4,3,3,3,3,3,3,4}}; 
  
  Minimax(Arbol arbol){
    this.arbol = arbol;
  }
  
  int[] mejorJugada(){ //Selecciona la mejor jugada de los escenarios posibles.
    ArrayList<Tablero> jugadas = arbol.hijos();
    for(int i = 0; i < jugadas.size(); i++){
       System.out.println(jugadas.get(i).cantidadFichas().y);
       System.out.println(jugadas.get(i).cantidadFichas().x);
      
    }
    System.out.println(int(this.arbol.tablero.cantidadFichas().y));
    return null;
  }
}