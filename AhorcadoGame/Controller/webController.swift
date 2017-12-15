//
//  webController.swift
//  AhorcadoGame
//
//  Created by Jonathan Hernandez on 11/8/17.
//  Copyright © 2017 Jonathan Hernandez. All rights reserved.
//

import UIKit
import WebKit
class webController: UIViewController,UITableViewDataSource, UITableViewDelegate  {
    

    @IBOutlet weak var navBar: UINavigationBar!
    var materiaSelected : Materia!
    @IBOutlet weak var blockTable: UITableView!
    //@IBOutlet weak var webContent: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        blockTable.dataSource = self
        blockTable.delegate = self
       navBar.topItem?.title = materiaSelected.nomMateria
        /*
        let htmlPath = Bundle.main.path(forResource: "historia", ofType: "html")
        let url = URL(fileURLWithPath: htmlPath!)
        let request = URLRequest(url: url)
        webContent.load(request)*/
        print(materiaSelected.nomMateria)
        // Do any additional setup after loading the view.
        self.blockTable.estimatedRowHeight = 320
        self.blockTable.rowHeight = UITableViewAutomaticDimension
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dissmisWeb(_ sender: Any) {
        dismiss(animated: false, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "block") as? BlockCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return BlockCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "informationSegue", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let informationVC = segue.destination as? InformationVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Bloques != nil)
            informationVC.initProducts(category: sender as! Bloques)
            
        }
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
