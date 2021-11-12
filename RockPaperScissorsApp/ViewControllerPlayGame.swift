//
//  ViewControllerPlayGame.swift
//  RockPaperScissorsApp
//
//  Created by Daniel Vega on 11/11/21.
//

import UIKit

class ViewControllerPlayGame: UIViewController {
    
    var picked = -1
    var random = -1
    @IBOutlet weak var cpuChoseLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func segmentedControllerAction(_ sender: UISegmentedControl) {
    
        let selected = sender.selectedSegmentIndex
        
        switch selected {
            //rock
        case 0:
            random = .random(in: 0...2)
            print(random)
            picked = 0
            //paper
        case 1:
            random = .random(in: 0...2)
            print(random)
            picked = 1
            //scissors
        case 2:
            random = .random(in: 0...2)
            print(random)
            picked = 2
        default:
            random = -1
            picked = -1
    }
    
        if picked == random {
            cpuChoseLabelOutlet.text = "tied"
        }
    
    

    }
}
