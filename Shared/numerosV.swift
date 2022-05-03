//
//  numerosV.swift
//  E (iOS)
//
//  Created by Jesús Francisco Leyva Juárez on 22/04/22.
//

import SwiftUI 

struct numerosV: View {
    @State private var numero: Int = 0
    @State private var text = "Par"
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("Numero", value: $numero, format: .number)
            Text("El numero es \(self.text)")
            Button("Verificar Numero") {
                self.text = verificar(number: numero)
            }
        } .padding()
    }
    func verificar(number:Int) -> String {
        if number % 2 == 0 {
           return "Par"
        } else {
           return "Impar"
        }
    }
}

struct numerosV_Previews: PreviewProvider {
    static var previews: some View {
        numerosV()
    }
}

