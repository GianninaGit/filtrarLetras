//
//  TextBrain.swift
//  filtrarLetras
//
//  Created by Giannina on 17/2/23.
//

import Foundation
struct TextBrain {
    var lista = ["Ariel", "Carla", "Giannina", "Toti", "Poupeé", "Nina", "Zibaritah"]
    var filtro = ""

    func filtrarLetras() -> [String] {
        if filtro.isEmpty {
            return lista
        }
        
//        var resultado: [String] = []
//        for nombre in lista {
//            if nombre.range(of: filtro, options: .caseInsensitive) != nil {
//                resultado.append(nombre)
//            }
//        }
        return lista.filter { palabra in palabra.localizedCaseInsensitiveContains(filtro) }
    }
    
    func contarLetras(algunaLista:[String]) -> [Int] {
        var resultado: [Int] = []
        for nombre in algunaLista {
            resultado.append(nombre.count)
        }
        return resultado
    }
    
    func exclamarPalabras(algunaLista:[String]) -> [String] {
        var resultado: [String] = []
        for nombre in algunaLista {
            resultado.append("¡" + nombre + "!")
        }
        return resultado
    }
    
    func capitalizarPalabras(algunaLista:[String]) -> [String] {
        var resultado: [String] = []
        for nombre in algunaLista {
            resultado.append(nombre.capitalized)
        }
        return resultado
    }
    
    func otraCapitalizarPalabras(algunaLista:[String]) -> [String] {
        return algunaLista.map { p in p.capitalized  }
    }
    
    func capitalizar(palabra:String) -> String {
        return palabra.capitalized
    }
    
    func miCapitalizarPalabras(algunaLista:[String]) -> [String] {
        return miMap(lista: algunaLista, funcTransformacion: capitalizar) //{ p in p.capitalized  }
    }
    
    func miMap(lista: [String], funcTransformacion:(String) -> String) -> [String] {
        var resultado: [String] = []
        for palabra in lista {
            let palabraTransformada = funcTransformacion(palabra)
            resultado.append(palabraTransformada)
        }
        return resultado
    }
}

