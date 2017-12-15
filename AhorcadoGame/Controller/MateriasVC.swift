//
//  MateriasVC.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/26/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit

class MateriasVC: UIViewController {
    
    var materiaSelected: Materia!
    @IBOutlet weak var buttonMaterias: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        materiaSelected = Materia()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        materiaSelected.nomMateria = sender.titleLabel!.text
        performSegue(withIdentifier: "setGame", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let GameVC = segue.destination as? GameVC{
            GameVC.materiaSelected = materiaSelected
        }
    }
    
    @IBAction func unwindToGameVC(segue:UIStoryboardSegue) { }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
