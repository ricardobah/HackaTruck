//
//  ViewController.swift
//  SwiftProject1
//
//  Created by student on 21/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Label1: UITextField!
    @IBOutlet weak var Label2: UITextField!
    @IBOutlet weak var Label3: UITextField!
    @IBOutlet weak var TextView: UITextView!
    @IBAction func Save(_ sender: UIButton) {
        makeNotes()
    }
    
    func makeNotes() -> Void{
        TextView.text = "Notes: " + Label1.text! + " " + Label2.text! + " " + Label3.text!
    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

