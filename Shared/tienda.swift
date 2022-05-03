//
//  tienda.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 01/05/22.
//

import SwiftUI
import Foundation

struct tienda: View {
    @State private var result = 0
    @State private var resultado2 = 0
    var body: some View {
        VStack {
            Button("Calcular") {
                result = elevador(x: 2, n: 4)
            }
            Button("While") {
                resultado2 = total(valorAElevar: 2, exponente: 4)
            }
            Text("\(result)")
            Text("\(resultado2)")
        }
    }
    func total(valorAElevar:Int, exponente:Int) -> Int {
        var k = 1
        var acum = 1
        while k <= exponente {
            acum = acum * valorAElevar
            k = k + 1
        }
        return acum
    }
   
    func elevador(x: Int, n: Int) -> Int {
        let result = pow(Double(x), Double(n))
        return Int(result)
    }
}

struct tienda_Previews: PreviewProvider {
    static var previews: some View {
        tienda()
    }
}
