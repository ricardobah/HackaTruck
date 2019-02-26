//
//  InfoViewController.swift
//  OnePieceList
//
//  Created by student on 25/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    
    
    @IBOutlet weak var charImage: UIImageView!
    
    @IBOutlet weak var charName: UILabel!
   
    @IBOutlet weak var charFruit: UILabel!
    @IBOutlet weak var charFiliation: UILabel!
    
    var img : String!
   
    var charAtualName : String?
    var atual : Character?
    override func viewDidLoad() {
        super.viewDidLoad()

            
            img = atual!.image
            charImage.image = UIImage(named: img)!
            charName.text = atual?.name
            charFruit.text = atual?.fruit
            charFiliation.text = atual?.filiation
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
