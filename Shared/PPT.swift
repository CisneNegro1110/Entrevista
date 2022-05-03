//
//  PPT.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 30/04/22.
//

import SwiftUI
/*
 1 - piedra
 2 - papel
 3 - tijera
 */
struct PPT: View {
    @State private var tiroJugador = 1
    @State private var tiroMaquina = 1
    @State private var resultado = ""
    @State private var maquinaResult = ""
    @State private var jugadorResult = ""
    var body: some View {
        VStack {
            TextField("", value: $tiroJugador, format: .number)
            Text("\(tiroMaquina)")
            Button("Numero Aleatorio") {
                self.resultado = tiroAleatorio()
            }
            Text("La Maquina" + maquinaResult)
            Text("El Jugador" + jugadorResult)
            Text(resultado)
            
        }
       
    }
    func tiroAleatorio() -> String {
        tiroMaquina = Int.random(in: 1...3)
        maquinaResult = juego(tiro: tiroMaquina)
        jugadorResult = juego(tiro: tiroJugador)
        if tiroMaquina == 1 && tiroJugador == 3 ||
            tiroMaquina == 2 && tiroJugador == 1 ||
            tiroMaquina == 3 && tiroJugador == 2 {
            return "Ganador La Maquina"
        }
        if tiroJugador == tiroMaquina {
            return "Es un empate, sigue jugando"
        }
        return "Ganaste una beca"
    }
    
    func juego(tiro:Int) -> String {
        if tiro == 1 {
            return " escoge piedra"
        } else if tiro == 2 {
            return " escoge papel"
        }
        return " escoge tijera"
    }
    
}

struct PPT_Previews: PreviewProvider {
    static var previews: some View {
        PPT()
    }
}
