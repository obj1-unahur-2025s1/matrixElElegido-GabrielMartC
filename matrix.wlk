object nave{
    const pasajeros = []

    method cantidadPasajeros() = pasajeros.size()

    method pasajeroDeMayorVitalidad() = pasajeros.max({pas => pas.vitalidad()}) //c.max(unTransformer)

    method pasajeroDeMenorVitalidad() = pasajeros.min({pas => pas.vitalidad()}) 

    method estaEquilibrada() = self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad() * 2

    method elegidoEstaEnLaNave() = pasajeros.any({pas => pas.esElElegido()})

    method chocar(){
        pasajeros.forEach({pas => pas.saltar()})
        pasajeros.clear()
    }

    method acelerar(){
        self.pasajerosNoSonElegidos().forEach({pas => pas.saltar()})
    }

    method pasajerosNoSonElegidos(){
        return pasajeros.filter({pas => !pas.esElElegido()})
    }
}

object neo{
    var energia =100

    method esElElegido() = true

    method saltar(){
        energia = energia / 2 
    }

    method vitalidad() = energia * 0.1
}

object morfeo{
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false

    method saltar(){
        vitalidad = (vitalidad - 1).max(0)
        estaCansado = !estaCansado
    }

    method vitalidad() = vitalidad
}

object trinity {
    method esElElegido() = false

    method saltar(){}

    method vitalidad() = 0

}