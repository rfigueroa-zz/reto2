//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init() {
        self = .Apagado
    }
    
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        self.velocidad = Velocidades()
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var velocidadEnCadena: String
        let actual = velocidad.rawValue
        switch velocidad {
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad baja"
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad media"
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        return (actual, velocidadEnCadena)
    }
    
}

var auto = Auto()
for n in 0...19 {
    var result  = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
    
}