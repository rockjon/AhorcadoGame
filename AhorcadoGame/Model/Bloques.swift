//
//  Bloques.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 12/12/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import Foundation
struct Bloques {
    private(set) public var title: String
    private(set) public var contentText: String
    
    init(title: String, contentText: String) {
        self.title = title
        self.contentText = contentText
    }
}
