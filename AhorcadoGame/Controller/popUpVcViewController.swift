//
//  popUpVcViewController.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/29/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit

class popUpVcViewController: UIViewController {

    @IBOutlet weak var popUp: UIView!
    @IBOutlet weak var txtViewQuestio: UITextView!
    
    var allQuestions : QuestionBank! = nil
    var random: UInt32!
    override func viewDidLoad() {
        super.viewDidLoad()
        popUp.layer.shadowColor = UIColor.black.cgColor
        popUp.layer.shadowOffset = CGSize(width:0.5,height:0.5)
        popUp.layer.shadowOpacity = 0.5
        popUp.layer.shadowRadius = 5
        popUp.layer.cornerRadius = 10
        popUp.layer.masksToBounds = true
        txtViewQuestio.text = allQuestions.list[Int(random)].questionText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dissmissPopUp(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
