//
//  alcancia.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 01/05/22.
//

import SwiftUI

struct alcancia: View {
    @State private var n: Int?
    @State private var acum: Int?
    var body: some View {
        VStack {
            TextField("Ingresar Numero", value: $n, format: .number)
                .textFieldStyle(.roundedBorder).padding()
            Button("Next") {
                acum = acumular(numero: n ?? 0)
            }
            Text("\(acum ?? 0)")
        }
    }
    func acumular(numero: Int) -> Int {
        var acumulado = 0
        var const = 1
        while const <= numero {
            acumulado = acumulado + const
            const = const + 1
        }
        return acumulado
    }
}

struct alcancia_Previews: PreviewProvider {
    static var previews: some View {
        alcancia()
    }
}
