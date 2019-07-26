//
//  CactiTableViewController.swift
//  TablePractice
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Veronica Cheung. All rights reserved.
//

import UIKit

struct Cacti {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class CactiTableViewController: UITableViewController {
    var allCacti = [
        Cacti(id: 1,
              title: "Prickly Pear",
              text: "Opuntia, commonly called prickly pear, is a genus in the cactus family, Cactaceae.",
              image: "prickly-pear"),
        Cacti(id: 2,
              title: "Hedgehog Cacti",
              text: "Echinopsis is a large genus of cacti native to South America, sometimes known as hedgehog cactus, sea-urchin cactus or Easter lily cactus.",
              image: "hedgehog"),
        Cacti(id: 3,
              title: "Rebutia",
              text: "Rebutia is a genus in the family Cactaceae, native to Bolivia and Argentina. They are generally small, colorful cacti, and globular in form.",
              image: "rebutia")
    ]

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCacti.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = allCacti[indexPath.row].title
        cell.detailTextLabel?.text = allCacti[indexPath.row].text
        cell.imageView?.image = UIImage(named: allCacti[indexPath.row].image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
