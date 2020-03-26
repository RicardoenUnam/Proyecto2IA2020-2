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
    ArrayList<Integer> ganancias = new ArrayList<Integer>();
    
    ArrayList<int[]> values = jugadas.get(0).obtenJugadas();
    for(int i = 0; i < jugadas.size(); i++){  
        
        if(i >= 1){
          int ganancia = int(jugadas.get(i).cantidadFichas().y) - int(jugadas.get(0).cantidadFichas().y);
          int minimax = ganancia*pesos[values.get(i-1)[0]][values.get(i-1)[1]];
          ganancias.add(minimax);
        }
        
        
      
    }
    
    int indexJugada = 0;
    int max = 0;
    for(int i = 0; i < ganancias.size(); i++){
      if(ganancias.get(i) > max){
        max = ganancias.get(i);
        indexJugada = i;
      }
    }
    
    //System.out.println(int(this.arbol.tablero.cantidadFichas().y));
    return values.get(indexJugada);
  }
}
