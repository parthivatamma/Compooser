//
//  ComputerListViewController.swift
//  Compooser
//
//  Created by Parthiva Tamma on 10/30/22.
//

import UIKit

protocol ComputerListViewControllerDelegate: AnyObject {
    
}

class ComputerListViewController: UITableViewController, ComputerHtmlViewControllerDelegate {
    @IBOutlet weak var bioLabel: UILabel!
    
    weak var delegate: ComputerListViewControllerDelegate?
    
    var itemToDisplay: Int?
    
    var listToUse: [String]?
    let elementaryList: [String] = ["Google Pixelbook Go\n Intel Core m3-i7\n HUD Graphics \n RAM 8G",
                                  "Acer Chromebook Spin 3\n Intel Celereon\n HUD Graphics",
                                  "Microsoft Surface Go 2\n Intel Pentium Gold \n HUD Graphics \n RAM 4GB-8GB",
                                  "Lenovo Ideapad Duet Chromebook",
                                  "HP Chromebook"]
    let middleList: [String] = ["ASUS VivoBook 15\n Intel i3\n HUD Graphics \n RAM 8G-16GB",
                                  "Acer Chromebook 15\n Intel N0360\n HUD Graphics\n RAM 16GB",
                                  "Microsoft Surface Go 2\n Intel Pentium Gold \n HUD Graphics\n RAM 4GB-8GB",
                                  "SamSung Chromebook 4 \n Intel N4000, \n Stream Graphics \n RAM 6GB",
                                  "Apple MacBook Air \n Intel i3/i5, \n Apple Graphics \n RAM 8G "]
    let highList: [String] = ["HP Envy 13\n Intel Core i5\n GPU: Iris Xe \n RAM 16GB",
                                  "MacBook Air M1\n M1 CPU\n M1 GPU \n RAM 8GB-16GB",
                                  "Dell XPS 13\n Intel i5/i7 \n GPU: Iris Xe\n RAM 8GB-16G",
                                  "Apple MacBook Pro 13, M2 CPU\n M2 Integrated graphics \n RAM 8GB-16GB",
                                  "HP Spectre x360 13.5\n Intel i7 CPU \n GPU: Iris Xe \n RAM 16GB"]
    let professionalList: [String] = ["Lenovo ThinkPadX1 Carbon\n Intel i7\n Iris Xe Graphics \n RAM 32GB",
                                  "HP ZBook Firefly3\n Intel i7\n Irix Xe Graphics \n RAM 32 GB",
                                  "Microsoft Surface Pro 8 2\n Intel Evo i5 \n HUD Graphics\n RAM 16GB",
                                  "Apple MacBook Pro\n M1 Pro Chip CPU\n M1 Integrated Graphics \n RAM 16GB"]
                                  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = itemToDisplay {
            print("value is \(item)")
            switch item {
            case 0:
                listToUse = elementaryList
            case 1:
                listToUse = middleList
            case 2:
                listToUse = highList
            case 3:
                listToUse = professionalList
            default:
                listToUse = elementaryList
            }
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listToUse?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompList", for: indexPath) as! CompDetailTableViewCell
        
     
        cell.bioLabel.text = listToUse?[indexPath.row]
        //cell.bioLabel.textColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! ComputerHtmlViewController
        controller.delegate = self
        
        if let indexPath = tableView.indexPath(for: sender as! UITableViewCell) {
            controller.indexForFile = indexPath.row
        }
    }

}
