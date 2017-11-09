//
//  Question.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/26/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: String
    
    init(text: String, correctAnswer: String) {
        questionText = text
        answer = correctAnswer
    }
    
}
