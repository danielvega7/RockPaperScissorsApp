//
//  InformationClass.swift
//  RockPaperScissorsApp
//
//  Created by Daniel Vega on 11/12/21.
//

import Foundation

public struct StaticStuff {
    public static var games = [GameInformation]()
}

public class GameInformation{
    var userUse: Int
    var cpuUse: Int
    var win: Bool
    
    init(uu: Int, cu: Int, w: Bool) {
        userUse = uu
        cpuUse = cu
        win = w
    }
    
}
