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
    ArrayList<int[]> ganancias = new ArrayList<int[]>();
    for(int i = 0; i < jugadas.size(); i++){
        System.out.println();
        for(int j = 0; j < 8 ; j++){
          for(int k = 0; k < 8; k++){
            System.out.print(jugadas.get(i).mundo[j][k]);
          }
          System.out.println();
        }
        System.out.println(jugadas.get(0).cantidadFichas().x);
        System.out.println(jugadas.get(0).cantidadFichas().y);
        System.out.println(jugadas.get(i).cantidadFichas().x);
        System.out.println(jugadas.get(i).cantidadFichas().y);
        
        
      
    }
    //System.out.println(int(this.arbol.tablero.cantidadFichas().y));
    return null;
  }
}
