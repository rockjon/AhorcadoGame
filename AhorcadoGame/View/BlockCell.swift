//
//  BlockCell.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 12/12/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit
@IBDesignable
class BlockCell: UITableViewCell {

    @IBOutlet weak var blockSection: UIView!
    @IBOutlet weak var title : UILabel!
    @IBOutlet weak var contentText : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        customizeView()
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    func  customizeView(){
        blockSection.layer.shadowColor = UIColor.black.cgColor
        blockSection.layer.shadowOffset = CGSize(width:0.5,height:0.5)
        blockSection.layer.shadowOpacity = 0.5
        blockSection.layer.shadowRadius = 5
        blockSection.layer.cornerRadius = 10
        blockSection.layer.masksToBounds = true
    }

    func updateViews(category: Bloques) {
        self.title.text = category.title
        self.contentText.text = category.contentText
        
        print(category.contentText)
    }
    
    
    

}
