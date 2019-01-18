//
//  MasterViewController.swift
//  Splitter
//
//  Created by Vivek Rai on 18/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 130
       
    }



    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
               
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.image = imagesArray[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = colorsArray[indexPath.row]
        cell.textLabel!.text = namesArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

   

    


}

