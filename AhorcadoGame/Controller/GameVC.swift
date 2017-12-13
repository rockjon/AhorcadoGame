//
//  GameVC.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 10/26/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    

    @IBOutlet weak var gamLife: UIImageView!
    @IBOutlet var winView: UIView!
    @IBOutlet var loseView: UIView!
    @IBOutlet weak var coverBlock: UIView!
    @IBOutlet weak var lblMateria: UILabel!
    let imageHangMan = ["hasta.png","head.png","body.png","hand1.png","hand2.png","foot1.png","foot2.png","killed.png"]
    var allQuestions : QuestionBank! = nil
    var materiaSelected : Materia!
    var incongnito : [String] = []
    var palabra : [String] = []
    var random : UInt32!
    var buttons = [UIButton]()
    var errorCounter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        drawQuestions()
        winView.layer.cornerRadius = 5
        loseView.layer.cornerRadius = 5
        loseView.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
       self.performSegue(withIdentifier: "popUp", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateIn() {
        self.view.addSubview(coverBlock)
        self.view.addSubview(loseView)
        loseView.center = self.view.center
        loseView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        loseView.alpha = 0
        coverBlock.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            //self.visualEffectView.effect = self.effect
            self.coverBlock.alpha = 0.5
            self.loseView.alpha = 1
            self.loseView.transform = CGAffineTransform.identity
        }
        
    }
    
    func animateOut () {
        UIView.animate(withDuration: 0.3, animations: {
            self.loseView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.loseView.alpha = 0
            self.coverBlock.alpha = 0
            
            //self.visualEffectView.effect = nil
            
        }) { (success:Bool) in
            self.loseView.removeFromSuperview()
            //self.coverBlock.removeFromSuperview()
            self.researchVariables()
            self.drawQuestions()
            
        }
    }
    
    func drawQuestions(){
        //let random = Int(arc4random_uniform(6))
        
        allQuestions = QuestionBank(materia: materiaSelected)
        let questionCount = UInt32(allQuestions.list.count)
        random = arc4random_uniform(questionCount)
        self.performSegue(withIdentifier: "popUp", sender: self)
        for c in allQuestions.list[Int(random)].answer{
           
            if c == " " {
                incongnito.append(" ")
                palabra.append(" ")
            }else {
                incongnito.append("•")
                palabra.append("\(c)")
            }
            
        }
        print(String(describing: incongnito))
        print(palabra)
        lblMateria.text = incongnito.joined()
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.backgroundColor = UIColor.red
        sender.isEnabled = false
        buttons.append(sender)
        let letterSelected = sender.titleLabel!.text
        checkAnswer(letter: letterSelected!,buttonPressded:  sender)
    }
    
    func checkAnswer (letter : String, buttonPressded: UIButton){
        var i = -1
        for c in palabra{
            i += 1
            if c == letter {
               print(i)
                incongnito[i] = c
                buttonPressded.backgroundColor = UIColor.green
            }
        }
        if !palabra.contains(letter){
                errorCounter += 1
                print(errorCounter)
        }
        gameStatus()
        lblMateria.text = incongnito.joined()
    }
    
    func gameStatus(){
        if allQuestions.list[Int(random)].answer == incongnito.joined() {
            lblMateria.text = allQuestions.list[Int(random)].answer
            print("succes!")
            researchVariables()
            drawQuestions()//performSegue(withIdentifier: "popUp", sender: self)
        }else if errorCounter == 1 {
            gamLife.image = UIImage(named: imageHangMan[1])
          
        }else if errorCounter == 2 {
            gamLife.image = UIImage(named: imageHangMan[2])
            
        }else if errorCounter == 3 {
            gamLife.image = UIImage(named: imageHangMan[3])
           
        }else if errorCounter == 4 {
            gamLife.image = UIImage(named: imageHangMan[4])
          
        }else if errorCounter == 5 {
            gamLife.image = UIImage(named: imageHangMan[5])
           
        }else if errorCounter == 6 {
            gamLife.image = UIImage(named: imageHangMan[6])
          
        }else if errorCounter == 7 {
            gamLife.image = UIImage(named: imageHangMan[7])
            lblMateria.text = allQuestions.list[Int(random)].answer
            animateIn()
        }
     
        print(incongnito.joined())
        print(allQuestions.list[Int(random)].answer)
    }
    
    func researchVariables (){
        incongnito = []
        palabra = []
        lblMateria.text = ""
        random = nil
        errorCounter = 0
        gamLife.image = UIImage(named: imageHangMan[0])
        for i in 0...buttons.count-1{
            buttons[i].isEnabled = true
            buttons[i].backgroundColor = UIColor(red: CGFloat(149/255.0), green: CGFloat(165/255.0), blue: CGFloat(166/255.0), alpha: CGFloat(1.0))
        }
        buttons.removeAll()
        
    }
    @IBAction func verPregunta(_ sender: Any) {
        self.performSegue(withIdentifier: "popUp", sender: self)
    }
    
    @IBAction func dissmisLose(_ sender: Any) {
        animateOut()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let popUpVC = segue.destination as? popUpVcViewController{
            popUpVC.allQuestions = allQuestions
            popUpVC.random = random
        } else  if let webVC = segue.destination as? webController{
            webVC.materiaSelected = materiaSelected
        }
    }
    
    @IBAction func dissmissGame(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    @IBAction func openWebContent(_ sender: Any) {
        self.performSegue(withIdentifier: "webSegue", sender: self)
       
    }
    
}
