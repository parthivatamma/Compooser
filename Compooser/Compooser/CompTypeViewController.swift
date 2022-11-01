//
//  CompTypeViewController.swift
//  Compooser
//
//  Created by Parthiva Tamma on 10/30/22.
//

import UIKit

class CompTypeViewController: UITableViewController, ComputerListViewControllerDelegate, ComputerHtmlViewControllerDelegate {

    var items = [CompTypeItem]()
    
    
    
    let compTypes: [String] = ["Elementary", "Middle", "High", "Professional"]
    let myImages: [String] = ["elementary.png", "middle.png", "high.png", "professional.png"]
    let subTypes: [String] = ["Basic & Cheap", "Slightly more powerful",
                             "Powerful", "Suitable for anyone"]
   
    @IBAction func done() {
        print("Done")
        dismiss(animated: true, completion: nil)
      //navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...compTypes.count-1 {
            let item = CompTypeItem()
            item.text = compTypes[i]
    
            items.append(item)
            print(i)
        }


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompTypeItem", for: indexPath)
        
        cell.textLabel?.text = compTypes[indexPath.row]
        //cell.textLabel?.sub
        cell.imageView?.image = UIImage(named: myImages[indexPath.row])
        let subtitle = cell.viewWithTag(7) as! UILabel
        subtitle.text = subTypes[indexPath.row]
        return cell
    }
    
    override func tableView(
       _ tableView: UITableView,
       didSelectRowAt indexPath: IndexPath
     ){
        tableView.deselectRow(at: indexPath, animated: true)
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! ComputerListViewController
        controller.delegate = self
        
        if let indexPath = tableView.indexPath(for: sender as! UITableViewCell) {
            controller.itemToDisplay = indexPath.row
        }
    }
   
    @IBAction func press() {
        print("Press")
        
    }
}
