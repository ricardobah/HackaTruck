//
//  PodcastTableViewController.swift
//  PodcastList
//
//  Created by student on 22/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit

class PodcastTableViewController: UITableViewController {
    
   
    @IBOutlet weak var searchBarPodcast: UISearchBar!
   
    var podcasts = [Podcast]()
    var filteredPodcasts = [Podcast]()
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.podcasts = dbPodcast.getPodcast()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Candies"
       // navigationItem2.searchController = searchController
        
        definesPresentationContext = true
        /*let header = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 100))
        
        tableView.tableHeaderView = header*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func searchBarIsEmpty() -> Bool {
        
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredPodcasts = podcasts.filter({( podcast : Podcast) -> Bool in
            return  podcast.name.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return podcasts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcastIdentifier", for: indexPath)

        if let podcastCell = cell as? PodcastTableViewCell{
            let podcast = podcasts[indexPath.row]
            
            podcastCell.Name.text = podcast.name
            podcastCell.Status.text = podcast.status
            podcastCell.podcastImage.image = UIImage(named: podcast.image)
        
        
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

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            podcasts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}



extension PodcastTableViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}


