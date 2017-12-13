//
//  DataService.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 12/12/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    private let history = [
        Bloques(title : "Bloque 1", contentText : "Fue un sacerdote y revolucionario novohispano que destacó iniciando la primera etapa de la Guerra de Independencia de México con un acto conocido en la historiografía mexicana como Grito de Dolores. \n Fue un sacerdote y revolucionario novohispano que destacó iniciando la primera etapa de la Guerra de Independencia de México con un acto conocido en la historiografía mexicana como Grito de Dolores. "),
        Bloques(title : "Bloque 2", contentText : " 1 blah blah blah "),
        Bloques(title : "Bloque 3", contentText : " 1 blah blah blah "),
        Bloques(title : "Bloque 4", contentText : " 1 blah blah blah "),
        Bloques(title : "Bloque 5", contentText : " 1 blah blah blah "),
        Bloques(title: "Bloque 6", contentText: "nookjjsjdijidojioejfijreijifjeriofjioefjgoifjeigjio jeiorfjiorejfioejrfiojrioejfiorjefijeiorjfoejofjeoijfoiejojfoejofejofjeo")
    ]
    
   
    
 
    
    func getProducts(forCategoryTitle title:String) -> String {
        switch title {
        case "Bloque 1":
            return "Los primeros seres humanos \n Los homínidos son los ancestros de los seres humanos. Los restos fósiles más antiguos fueron encontrados en África y datan de hace 3.5 millones de años. Podían mantenerse erguidos y caminar, su cerebro era más grande en comparación con el de otros primates y tenían dedos pulgares que les permitían manipular objetos. Por esas características fueron capaces de fabricar instrumentos, lo que los distingue de los primates hominoideos. \n Existieron dos grupos de homínidos: los Australopithecus (lla- mados así porque sus restos se encontraron en el sur de África) y los Homo (“hombre”), de los cuales los humanos actuales son los únicos sobrevivientes.\n Los Australopithecus aparecieron antes que los Homo. Eran her- bívoros y sus características físicas los asemejaban más a los prima- tes. Se extinguieron por no poder adaptarse a los cambios climáticos que alteraron su paisaje en África. \n En cambio, los Homo (habilis, erectus, sapiens, neanderthalensis) se adaptaron a diferentes regiones naturales por su capacidad para fabricar herramientas y armas; diversi caron su alimentación y su cerebro aumentó de tamaño. Cambió su  sonomía, especialmente el rostro; desarrollaron un pensamiento racional, el lenguaje oral y crearon símbolos. La mayoría de los Homo se extinguió, excepto el Homo sapiens sapiens, es decir, el ser humano. Su supervivencia se debe, entre otras causas, a su capacidad de trabajar organizadamen- te y transmitir sus conocimientos."
        case "Bloque 2":
            return ""
        case "Bloque 3":
            return ""
        case "Bloque 4":
            return "sjkdjklasjdklsj"
        default:
            return ""
        }
    }
    
   
    
  
    func getCategories() -> [Bloques] {
        return history
    }
}
