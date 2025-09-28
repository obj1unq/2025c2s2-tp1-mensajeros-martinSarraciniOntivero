object paquete{
    var property  pago = false 
    var property destino = destPuenteBrooklyn 
    var property persona = jeanGray

    method sePuedeEnviar(){ 
        return self.pago() and destino.puedePasar(persona)
    }
}

object destPuenteBrooklyn{
    method puedePasar(persona){
        return  persona.pesoTotal() <= 1000
    }
}

object destLaMatrix{
    method puedePasar(persona){
        return persona.puedeLlamar()
    }


}

object jeanGray {
    var  peso = 65 
    method puedeLlamar(){
        return true 
    }
    method pesoTotal(){
        return peso
    }
}

object Neo {
    var peso = 0
    var credito = true 
    method puedeLlamar(){
        return credito 
    }
    method pesoTotal(){
        return peso
    }
    method sinCredito(){
        credito = false
    }
}

object saraConnor {
  var property peso = 0
  var property vehiculo = moto
  method puedeLlamar(){
    return false
  }
  method pesoTotal(){
    return peso + vehiculo.peso()
  }
}

object moto{
    var peso = 100
    method peso(){
        return peso
    }
}

object camion{
    var peso = 500
    const kiloAcoplado = 500
    var property cantAcoplados = 0
    method peso(){
        return peso + (kiloAcoplado * cantAcoplados)
    }
}

