//
//  ViewController.swift
//  IMCCalculator
//
//  Created by student on 21/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Results: UITextView!

  
    @IBOutlet weak var peso: UITextField!
    
    @IBOutlet weak var Altura: UITextField!
    
    var pesoint = Int(peso.text)
    var alturaint =Int(altura.text!)
    var imc = pesoint/(alturaint*alturaint)
    @IBAction func Calcular(_ sender: UIButton) {
        Results.text = (String(imc))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var topCorrect = (self.bounds.size.height - self.contentSize.height *self.zoomScale)/2
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

