//
//  InformationVC.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 12/13/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit

class InformationVC: UIViewController {

    @IBOutlet weak var textInformation: UILabel!
    var informationText : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        textInformation.text = informationText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func initProducts(category: Bloques) {
        informationText = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        
        print(informationText)
        navigationItem.title = category.title
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
