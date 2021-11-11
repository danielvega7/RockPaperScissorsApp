//
//  ViewControllerTableView.swift
//  RockPaperScissorsApp
//
//  Created by Daniel Vega on 11/9/21.
//

import UIKit

class ViewControllerTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell

        cell.configure(color: UIColor.red, user: "Danny", cpu: "cpu")
        
        
        return cell
    }
   

}
