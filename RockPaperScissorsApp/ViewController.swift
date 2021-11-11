//
//  ViewController.swift
//  RockPaperScissorsApp
//
//  Created by Daniel Vega on 11/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func segmentedControllerAction(_ sender: UISegmentedControl) {
        let selected = sender.selectedSegmentIndex
        switch selected {
        case 0:
            guard let url = URL(string: "https://www.google.com/search?q=rock+paper+scissors+rules&oq=rock+paper+scissors+rules&aqs=chrome..69i57j0i512j0i22i30l8.5252j0j4&sourceid=chrome&ie=UTF-8&safe=active&ssui=on#kpvalbx=_vyKNYe71G5TNtQbHlIr4AQ19") else { return }
            UIApplication.shared.open(url)
        case 1:
            guard let url = URL(string: "https://www.youtube.com/watch?v=6yrdT5y12kA") else { return }
            UIApplication.shared.open(url)
        default:
            guard let url = URL(string: "https://stackoverflow.com") else { return }
            UIApplication.shared.open(url)
    
        }
    }
    

    
    
}

