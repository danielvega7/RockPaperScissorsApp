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
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func segmentedControllerAction(_ sender: UISegmentedControl) {
        var isWin = false
        let selected = sender.selectedSegmentIndex
        
        switch selected {
            //rock
        case 0:
            random = .random(in: 0...2)
         
            picked = 0
            //paper
        case 1:
            random = .random(in: 0...2)
          
            picked = 1
            //scissors
        case 2:
            random = .random(in: 0...2)
          
            picked = 2
        default:
            random = -1
            picked = -1
    }
        
        
        
        
    
        if random == 0 {
            cpuChoseLabelOutlet.text = "cpu chose rock"
        }
        else if random == 1 {
            cpuChoseLabelOutlet.text = "cpu chose paper"
        }
        else {
            cpuChoseLabelOutlet.text = "cpu chose scissors"
        }
        
        
        
        
        
        if picked == random {
            outcomeLabelOutlet.text = "tied"
        }
        else{
            if picked == 0{
                if random == 1 {
                    outcomeLabelOutlet.text = "cpu won, scissor > rock"
                    isWin = false
                }
                else {
                    outcomeLabelOutlet.text = "user won, rock > scissors"
                    isWin = true
                }
            }
            if picked == 1 {
                if random == 0 {
                    outcomeLabelOutlet.text = "user won, paper > rock"
                    isWin = true
                }
                else{
                    outcomeLabelOutlet.text = "cpu won, scissors > paper"
                    isWin = false
                }
                
            }
            if picked == 2 {
                if random == 0{
                    outcomeLabelOutlet.text = "cpu won, rock > scissors"
                    isWin = false
                }
                else {
                    outcomeLabelOutlet.text = "user won, scissors > paper"
                    isWin = true
                }
            }
        }
       
        StaticStuff.games.append(GameInformation(uu: picked, cu: random, w: isWin))
    }
}
