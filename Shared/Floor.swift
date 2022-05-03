//
//  SwiftUIView.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 28/04/22.
//

import SwiftUI
import Foundation

struct Floor: View {
    @State private var cantidad = 320
    @State private var casasH = 7
    @State private var cantidadBrowniesH = 0.0
    @State private var cantidadBrowniesA = 0
    var body: some View {
        VStack {
            Text("Brownies para huerfanos: \(cantidadBrowniesH)")
            Text("Brownies para ancianos: \(cantidadBrowniesA)")
            Button("Next") {
                cantidadDeBrowniesA()
                cantidadDeBrowniesH()
            }
        }
        
    }
    func cantidadDeBrowniesH() {
        self.cantidadBrowniesH = floor(Double(self.cantidad / self.casasH))
    }
    func cantidadDeBrowniesA() {
        self.cantidadBrowniesA = self.cantidad % self.casasH
    }
}

struct Floor_Previews: PreviewProvider {
    static var previews: some View {
        Floor()
    }
}
