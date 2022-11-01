//
//  ComputerHtmlViewController.swift
//  Compooser
//
//  Created by Parthiva Tamma on 10/31/22.
//

import UIKit
import WebKit

protocol ComputerHtmlViewControllerDelegate: AnyObject {
    
}

class ComputerHtmlViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    weak var delegate: ComputerHtmlViewControllerDelegate?
    var indexForFile: Int?
    
    @IBAction func close() {
      dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        var htmlFile = "elementary0"
        if let item = indexForFile {
            print("value is \(item)")
            htmlFile = "elementary" + "\(item)"
            print(htmlFile)
        }
        
        if let url = Bundle.main.url(
            forResource: htmlFile, withExtension: "html") {
            let request = URLRequest(url: url)
            print(request)
            webView.load(request)
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
