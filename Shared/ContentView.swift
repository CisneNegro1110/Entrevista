//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var dato: String = ""
    @State var realNumber: Int?
    @ObservedObject var vm = viewModel()
    var body: some View {
        VStack {
            TextField("Numero a evaluar", value: $realNumber, format: .number)
                .textFieldStyle(.roundedBorder)
            Button("Next") {
                self.dato = verificar()
               // self.dato = vm.verif(realNumber)
            }
            Text("El numero es: " + dato)
        } .padding()
    }
    func verificar() -> String {
         if (realNumber ?? 0) % 2 == 0 {
            return "par"
        }
           return "impar"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class viewModel: ObservableObject {
    func verif(_ number: Int) -> String {
        if number % 2 == 0 {
            return "par"
        }
            return "impar"
    }
}
