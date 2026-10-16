class Elemento{
 
    // Clase abstracta de elementos
    
    method esBueno() // Retorna si esBueno el elemento en funcion a la condicion que se le de 

    method efectoDeDano(plaga) // Hace cambios en el elemento segun los la condicion que se le de al recibir un ataque

    method recibeAtaque(plaga){ // Recibe el ataque de una plaga
     
        self.efectoDeDano(plaga)
    
    }
}