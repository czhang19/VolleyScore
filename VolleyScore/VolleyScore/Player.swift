//
//  Player.swift
//  VolleyScore
//
//  Created by Cynthia Zhang on 1/21/18.
//  Copyright © 2018 Cynthia Zhang. All rights reserved.
//

//import Foundation

struct Player {
    var name: String
    var pass0: Double
    var pass1: Double
    var pass2: Double
    var pass3: Double
    var kill: Double
    var hittingE: Double
    var hittingA: Double
    var ace: Double
    var servingE: Double
    var servingA: Double
    
    init(name: String) {
        self.name = name
        pass0 = 0
        pass1 = 0
        pass2 = 0
        pass3 = 0
        kill = 0
        hittingE = 0
        hittingA = 0
        ace = 0
        servingE = 0
        servingA = 0
    }
}
