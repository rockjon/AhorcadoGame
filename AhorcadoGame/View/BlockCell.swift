//
//  BlockCell.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 12/12/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit

class BlockCell: UITableViewCell {

    @IBOutlet weak var title : UILabel!
    @IBOutlet weak var contentText : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateViews(category: Bloques) {
        self.title.text = category.title
        self.contentText.text = category.contentText
        
        print(category.contentText)
    }
    
  

}
