//
//  imc.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 30/04/22.
//

import SwiftUI

struct imc: View {
    @State private var peso: Double?
    @State private var altura: Double?
    @State private var imcR = ""
    var body: some View {
        VStack {
            TextField("Peso", value: $peso, format: .number)
            TextField("Altura", value: $altura, format: .number)
            Button("Verificar") {
                self.imcR = calcular()
            }
            Text(imcR)
        }
    }
    func calcular() -> String {
        let pesoLocal = (peso ?? 0.0)
        let alturaLocal = (altura ?? 0)
        let imc = pesoLocal / (alturaLocal * alturaLocal)
        if imc < 16 {
            return "Delgadez severa"
        } else if imc < 17 {
            return "Delgadez moderada"
        } else if imc < 18.5 {
            return "Delgadez aceptable"
        } else if imc < 25 {
            return "Peso normal"
        } else if imc > 25 {
            return "Sobre peso"
        }
        return ""
    }
}

struct imc_Previews: PreviewProvider {
    static var previews: some View {
        imc()
    }
}
