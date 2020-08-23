//
//  Round.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 26/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
//Defines a round
public struct Round {
    private var players: [Player]
    
    public mutating func drink() {
        var currentPlayer = players.removeFirst()
        //Do something to show animation
    }
}
