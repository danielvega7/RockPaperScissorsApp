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
        tableViewOutlet.reloadData()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        tableViewOutlet.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableViewOutlet.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StaticStuff.games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell

        
       // let image = UIImage(named: "bipolarInfoGraphic")!
        
        cell.configure(user: userChoice(userInput: StaticStuff.games[indexPath.row].userUse, row: indexPath.row), cpu: cpuChoice(cpuInput: StaticStuff.games[indexPath.row].cpuUse, row: indexPath.row))
        
        if StaticStuff.games[indexPath.row].win {
            cell.imageViewOutlet.image = UIImage(named: "greenColor")!
        }
        else if StaticStuff.games[indexPath.row].win == false{
            cell.imageViewOutlet.image = UIImage(named: "redImage")!
        }
        else {
            cell.imageViewOutlet.image = UIImage(named: "redImage")!
        }
        
        
        return cell
    }
    
    func userChoice(userInput: Int, row: Int) -> String {
        let userInput = StaticStuff.games[row].userUse
        var name = ""
        if userInput == 0 {
            name = "rock"
        }
        else if userInput == 1 {
            name = "paper"
        }
        else {
            name = "scissors"
        }
        return name
    }
    func cpuChoice(cpuInput: Int, row: Int) -> String {
        let cpuInput = StaticStuff.games[row].cpuUse
        var name2 = ""
        if cpuInput == 0 {
            name2 = "rock"
        }
        else if cpuInput == 1 {
            name2 = "paper"
        }
        else {
            name2 = "scissors"
        }
        return name2
    }
   

}
