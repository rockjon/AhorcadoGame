//
//  roundedButton.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/28/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit
@IBDesignable
class roundedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    func customizeView() {
        layer.cornerRadius = self.frame.width/2
        layer.backgroundColor = UIColor(red: CGFloat(149/255.0), green: CGFloat(165/255.0), blue: CGFloat(166/255.0), alpha: CGFloat(1.0)).cgColor
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
