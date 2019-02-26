//
//  RicardoViewController.swift
//  tabbar
//
//  Created by student on 25/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class RicardoViewController: UIViewController {

    @IBOutlet weak var textFd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="leo_eh_gado" {
            if let novaView = segue.destination as? LeoViewController{
                
              //  novaView.leogado.text = textFd.text ERRADO PQ N INSTANCIOU
                novaView.leogadocor = "aa"              }
        }
    }
    

}
