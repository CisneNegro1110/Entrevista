//
//  mesDias.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 29/04/22.
//

import SwiftUI

struct mesDias: View {
    @State private var mes = 1
    @State private var dias = 0
    @ObservedObject var vm = vmMesDias()
    var body: some View {
        VStack {
            TextField("Ingresar mes", value: $mes, format: .number)
            Button("Verificar") {
                dias = verificar()
               // dias = vm.ver(mes: mes)
            }
            Text("Dias: \(dias)")
        }
    }
    func verificar() -> Int {
        if mes >= 1 && mes <= 12 {
            if mes == 2 {
                return  28
            }
            if mes == 4 || mes == 6 || mes == 9 || mes == 11 {
                return  30
            }
            else {
                return 31
            }
        }
        return 0
    }
}

class vmMesDias: ObservableObject {
    func ver(mes: Int) -> Int {
        if mes >= 1 && mes <= 12 {
            if mes == 2 {
                return 28
            }
            if mes == 4 || mes == 6 || mes == 9 || mes == 11 {
                return 30
            } else {
                return 31
            }
        }
        return 0
    }
}

struct mesDias_Previews: PreviewProvider {
    static var previews: some View {
        mesDias()
    }
}
