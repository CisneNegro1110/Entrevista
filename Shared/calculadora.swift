//
//  calculadora.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 29/04/22.
//

import SwiftUI

struct calculadora: View {
    @State private var numero1: Int?
    @State private var numero2: Int?
    @State private var operador = ""
    @State private var result = 0
    var body: some View {
        VStack {
            TextField("Numero1", value: $numero1, format: .number)
            TextField("Numero2", value: $numero2, format: .number)
            TextField("Operador", text: $operador)
            Button("Next") {
                result = verificar() ?? 0
            }
            Text("Resultado: \(result)")
        }
       
    }
    func verificar() -> Int? {
        if operador == "/" {
            return (numero1 ?? 0) / (numero2 ?? 0)
        }
        if operador == "*" {
            return (numero1 ?? 0) * (numero2 ?? 0)
        }
        if operador == "-" {
            return (numero1 ?? 0) - (numero2 ?? 0)
        }
        if operador == "+" {
            return (numero1 ?? 0) + (numero2 ?? 0)
        }
        return nil
    }
}

struct calculadora_Previews: PreviewProvider {
    static var previews: some View {
        calculadora()
    }
}
