//
//  CharacterTableViewController.swift
//  OnePieceList
//
//  Created by student on 25/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class CharacterTableViewController: UITableViewController {

    var characters = [Character]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        characters = dbCharacteres.getCharacteres()
        
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

   

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterIdentifier", for: indexPath)

        if let characterCell = cell as? CharacterTableViewCell{
            let character = characters[indexPath.row]
            
            //characterCell.name.name = character.name
            
           
            characterCell.name.setTitle(character.name, for: .normal)
            
            
        }


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="info" {
            if let novaView = segue.destination as? InfoViewController{
                
                //  novaView.leogado.text = textFd.text ERRADO PQ N INSTANCIOU
                let celula = characters[tableView.indexPathForSelectedRow!.row]
                novaView.atual = celula
            }
        }

    }
    

}
