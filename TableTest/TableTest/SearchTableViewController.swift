//
//  SearchTableViewController.swift
//  TableTest
//
//  Created by cscoi005 on 2017. 1. 19..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

typealias Paper = (name:String, Keyword:Int)

class SearchTableViewController: UITableViewController {
    
   /* let SmartPhone = Paper(name:"스마트폰", Keyword:6)
    let Computer = Paper(name:"컴퓨터", Keyword:5)
    let Radio = Paper(name:"라디오", Keyword:5)
    let Monitor = Paper(name:"모니터", Keyword:4)
    let Mouse = Paper(name:"마우스", Keyword:3)
    let Calculator = Paper(name:"계산기", Keyword:5) */
    
    let Papernames:[Paper] = [Paper(name:"스마트폰", Keyword:6), Paper(name:"컴퓨터", Keyword:5), Paper(name:"라디오", Keyword:5), Paper(name:"모니터", Keyword:4), Paper(name:"마우스", Keyword:3), Paper(name:"계산기", Keyword:5)]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Papernames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Papername", for: indexPath)

        // Configure the cell...
        let Papername = Papernames[indexPath.row].name
        
        cell.textLabel?.text = Papername
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
