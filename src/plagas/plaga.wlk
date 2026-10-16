class Plaga{
    // Super clase de todas las plagas

    var poblacion // Determina la poblacion de una plaga
    
    method nivelDano() // Determina el nivel de daño de una plaga

    method transmiteEnfermedades(){ // Determina si un plaga transmite enfemedades

        return poblacion > 9 // Requerimiento base para que una plaga transmita enfermedades

    }

    method ataca(elemento){ // Ataque de una plaga

        elemento.recibeAtaque(self) // Efecto de ataque en un elemento
        poblacion += poblacion * 0.10 // Efecto de ataque sobre una plaga
        
    }

}