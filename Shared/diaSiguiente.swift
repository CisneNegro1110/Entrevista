//
//  diaSiguiente.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 30/04/22.
//

import SwiftUI

struct diaSiguiente: View {
    @ObservedObject var vm = vmMesDias()
    @State private var day = 5
    @State private var month = 1
    @State private var year = 1997
    var body: some View {
        VStack {
            Button("Verificar") {
                NextDay()
            }
            Text("\(day)")
            Text("\(month)")
            Text("\(year)")
        }
    }
    func NextDay() {
        let diasM = vm.ver(mes: month)
        if day > 1 && day <= diasM && diasM != 0 && year > 0 {
            if day < diasM {
                day += 1
            } else {
              day -= 1
            }
            if month != 12 {
                month += 1
            } else {
                month -= 1
                year += 1
            }
        }
    }
}

struct diaSiguiente_Previews: PreviewProvider {
    static var previews: some View {
        diaSiguiente()
    }
}
