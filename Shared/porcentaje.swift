//
//  porcentaje.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 26/04/22.
//

import SwiftUI

struct porcentaje: View {
    @State private var cantH: Double?
    @State private var  cantM: Double?
    @State private var porcentajeM = 0.0
    @State private var porcentajeH = 0.0
    var body: some View {
        
        VStack {
            TextField("Cantidad de Hombres", value: $cantH, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Cantidad de Mujeres", value: $cantM, format: .number)
                .textFieldStyle(.roundedBorder)
            Button("Calcular") {
                let (porcentajeHom, porcentajeMuj) = PorcentajeH(cantH: cantH!, cantM: cantM!)
                self.porcentajeH = porcentajeHom
                self.porcentajeM = porcentajeMuj
            }
            Spacer()
            Text("Porcentaje H : \(Int(porcentajeH)) %")
            Text("Porcentaje M : \(Int(porcentajeM)) %")
        } .padding()
    }
    func PorcentajeH(cantH: Double, cantM: Double) -> (Double, Double) {
        let total = cantH + cantM
        let resultH = cantH / total * 100.0
        let resultM = cantM / total * 100.0
        return (resultH, resultM)
    }
}


struct porcentaje_Previews: PreviewProvider {
    static var previews: some View {
        porcentaje()
    }
}
