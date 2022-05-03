//
//  Ceiling.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 27/04/22.
//

import SwiftUI

/*
 “Los de la porra dicen que para elaborar  cada metro del súper rollo de fresa se
 requieren 35 kg de mermelada.  Cada bulto de la mejor mermelada de fresa  de Irapuato
 es de 10kg.  Ellos quieren que el algoritmo calcule la cantidad de bultos que se
 pedirán  y  calcule los kg sobrantes de mermelada”

 */
struct Ceiling: View {
    @State private var metros = 93.0
    @State private var kgSobrantes = 0.0
    @State private var bultos = 0
    var body: some View {
        VStack {
            
            Text("Bultos: \(bultos)")
            Text("Kilogramos sobrantes: \(kgSobrantes)")
            Button("Next") {
                let (bultos, kgSobrante) = sobrante(cantiM: metros)
                self.kgSobrantes = kgSobrante
                self.bultos = bultos
            }
        }
    }
    func sobrante(cantiM: Double) -> (Int, Double) {
        let bultos = ceil(cantiM * 35 / 10.0)
        let kgSobrantes = bultos * 10.0 - (cantiM * 35)
        return (Int(bultos), kgSobrantes)
    }
}

struct Ceiling_Previews: PreviewProvider {
    static var previews: some View {
        Ceiling()
    }
}
