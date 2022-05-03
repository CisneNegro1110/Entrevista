//
//  prioridad.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 03/05/22.
//

import SwiftUI

struct prioridad: View {
    
    var body: some View {
        let (numero1, numero2) = calcular1()
        VStack {
            Text("\(numero1)")
            Text("\(numero2)")
        }
    }
    // La mutiplicacion y la division tienen prioridad sobre la suma y la resta
    // Y los parametros tienen prioridad sobre los cuatro
    let x = 2
    let y = 3
    let z = 5
    func calcular1() -> (Int, Int) {
        let multiYsuma = x + y * z
        let paramYmult = (x + y) * z
           return (multiYsuma, paramYmult)
    }
}

struct prioridad_Previews: PreviewProvider {
    static var previews: some View {
        prioridad()
    }
}
