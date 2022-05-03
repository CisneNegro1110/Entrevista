//
//  primos.swift
//  E
//
//  Created by Jesús Francisco Leyva Juárez on 25/04/22.
//

import SwiftUI

struct primos: View {
    @State private var entero = 0
    @State private var resultado = "Par"
    @State private var resultado2 = "no es primo"
    @State private var suma = 0
    var body: some View {
        VStack {
            TextField("Escribir numero a comprobar", value: $entero, format: .number)
            Button("Verificar") {
                self.resultado = comprobar(numero: entero)
            }
            Button("Verificar si es primo") {
              //  resultado2 = primo(numero: entero)
                resultado2 = primo2()
            }
            Button("Sumar") {
                suma = sumaF(numero: entero)
            }
            Text("El numero es \(resultado)")
            Text("\(resultado2)")
            Text("Suma: \(suma)")
        }
       
    }
    func comprobar(numero: Int) -> String {
        if numero % 2 == 0 {
            return "Par"
        } else {
             return "Impar"
        }
    }
    func sumaF(numero: Int) -> Int {
        let suma = numero + 1
        return suma
    }
    
    func primo(numero: Int) -> String {
        for i in 2 ..< numero {
            if numero % i == 0 {
                return "No es un número primo"
            }
        }
        return "Es numero primo"
    }
    func primo2() -> String {
        for i in 2 ..< entero {
            if entero % i == 0 {
                return "No es un numero primo"
            }
        }
        return "Es un numero primo"
    }
    /*
     si ingresi un 9
     el for empezaria de el dos hasta el numero que ingrese (No es primo y
     al meterse al if con el 3 el residuo daria cero)
     El for tiene que empezar desde el 2 y
     debe de terminar un numero antes del cual vamos a verificar
     Ya que si no hacemos esto con el 1 y con nuestro mismo numero al momento de entrar al if
     dara el residuo 0 y siempre resultara que no es primo
     2  3
     si ingreso el 11 (si es primo)
     2  3  4  5  6  7  8  9  10
     */
}

struct primos_Previews: PreviewProvider {
    static var previews: some View {
        primos()
    }
}
