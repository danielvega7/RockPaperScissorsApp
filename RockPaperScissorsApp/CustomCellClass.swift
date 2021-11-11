//
//  CustomCellClass.swift
//  RockPaperScissorsApp
//
//  Created by Daniel Vega on 11/9/21.
//

import Foundation
import UIKit
public class CustomCell: UITableViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var userLabelOutlet: UILabel!
    @IBOutlet weak var cpuLabelOutlet: UILabel!
    

    
    func configure(color: UIColor, user: String, cpu: String ) {
        
        imageViewOutlet.backgroundColor = color
        userLabelOutlet.text = user
        cpuLabelOutlet.text = cpu
       
        
    }
    
}
