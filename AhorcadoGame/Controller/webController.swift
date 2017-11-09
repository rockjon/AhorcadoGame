//
//  webController.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 11/8/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit
import WebKit
class webController: UIViewController {

    @IBOutlet weak var webContent: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let htmlPath = Bundle.main.path(forResource: "historia", ofType: "html")
        let url = URL(fileURLWithPath: htmlPath!)
        let request = URLRequest(url: url)
        webContent.load(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dissmisWeb(_ sender: Any) {
        dismiss(animated: false, completion: nil)
        
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
