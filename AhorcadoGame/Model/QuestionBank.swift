//
//  QuestionBank.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/26/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import Foundation


class QuestionBank {
    
    
    var list = [Question]()
   
    init(materia: Materia!) {
        
        // Agregar preguntas
        if materia.nomMateria == "Historia" {
            list.append( Question(text: "Fue un sacerdote y revolucionario novohispano que destacó iniciando la primera etapa de la Guerra de Independencia de México con un acto conocido en la historiografía mexicana como Grito de Dolores. ", correctAnswer: "MIGUEL HIDALGO"))
            list.append( Question(text: "¿Qué gran civilización cayó a mano de españoles y fue saqueada el 13 de agosto de 1521?", correctAnswer: "TENOCHTITLAN"))
            list.append( Question(text: "El primer antecedente que se conoce sobre esta celebración data de 1924, cuando nuestro país asumió la Declaración de Ginebra sobre los derechos de los niños del mundo, sin ninguna distinción.", correctAnswer: "DIA DEL NIÑO"))
            list.append(Question(text: "El 5 de noviembre de 1851, Juan de la Granja inauguró, junto con el presidente Mariano Arista, el primer servicio de comunicación rápida entre la Ciudad de México y Nopalucan, un pueblecito de Puebla.", correctAnswer: "TELEGRAFO"))
            list.append(Question(text: "Le decían el “quince uñas” por su desmedido gusto por el dinero. Ganó y perdió importantes batallas; malvendió territorio mexicano. Pero tenía un gran carisma y el ejército lo respetaba. Las veces que ocupó la presidencia fueron con el consentimiento de sus compatriotas que lo mismo lo adoraban que lo crucificaban.", correctAnswer: "SANTA ANNA"))
            list.append(Question(text: "Estuvo a cargo del ejército realista prácticamente durante toda la guerra de Independencia. Cuando el sitio de Cuautla, Calleja pensó que terminaría con la resistencia insurgente en menos de seis horas pero se encontró con un ejército valiente y empecinado en no dejarse vencer.", correctAnswer: "FELIX CALLEJA"))
            list.append(Question(text: "Nació en Cuatro Ciénagas, Coahuila, en 1859. Se unió a la revolución maderista en Ciudad Juárez; encabezó la revolución constitucionalista; convocó al congreso que promulgó la Constitución de 1917 y murió asesinado en 1920.", correctAnswer: "VENUSTIANO CARRANZA"))
            list.append(Question(text: "Deidad del México antiguo conocida como la “Serpiente Emplumada", correctAnswer: "QUETZALCOATL"))
            list.append(Question(text: "Terreno construido sobre las lagunas del valle de México que sirvió de base al sistema productivo del altiplano central. En la actualidad, puede encontrarse en Xochimilco.", correctAnswer: "CHINAMPA"))
            list.append(Question(text: "Manuscrito en papel amate o sobre cuero con representaciones pictóricas que relataba asuntos históricos y religiosos del México antiguo.", correctAnswer: "CODICE"))
            list.append(Question(text: "Nombre del último emperador mexica, a quien los conquistadores españoles torturaron quemándole los pies-", correctAnswer: "CUAUHTEMOC"))
   
            
        }else if materia.nomMateria == "Geografía" {
            list.append(Question(text: "¿Nuestro país es conocido mundialmente por tres nombres, cual es el oficial?", correctAnswer: "ETADOS UNIDOS MEXICANOS") )
            list.append(Question(text: "¿Cuál es la división política de los Estados Unidos Mexicanos?", correctAnswer: "ESTADOS") )
            list.append(Question(text: "Es un movimiento que se efectúa en la tierra alrededor del sol y de esta manera podemos festejar el inicio de un año más.", correctAnswer: "TRASLACION"))
            list.append(Question(text: "Durante el final de la década de 1830 y principio de la de 1840, este río es causa del conflicto entre la República de Texas y México, ya que la primera establecía su frontera sur en este río, y México su frontera norte en el río Nueces, más hacia el norte.", correctAnswer: "RIO BRAVO"))
            list.append(Question(text: "Es el segundo continente más grande de la Tierra, después de Asia. Ocupa gran parte del hemisferio occidental del planeta. Se extiende desde el océano Glacial Ártico por el norte hasta las islas Diego Ramírez por el sur, en la confluencia de los océanos Atlántico y Pacífico, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.", correctAnswer: "AMERICA") )
            list.append(Question(text: "Es el tercer continente por su extensión, tras Asia y América. Está situado entre los océanos Atlántico, al oeste, e Índico, al este. El mar Mediterráneo lo separa al norte del continente europeo; el punto en el que los dos continentes se hallan más cercanos es el estrecho de Gibraltar de 14,4 km de anchura.", correctAnswer: "AFRICA"))
            
            
        }
        
    }
    
}
