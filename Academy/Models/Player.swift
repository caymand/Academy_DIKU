//
//  Player.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public struct Player: Equatable, Identifiable {
    public var id = UUID()
    
//    public var sipsLeft: Int
    public var beersDrinken = 0
    public var name: String
    public var cards = [Card]()
    
    init(name: String) {
        self.name = name        
    }
    public static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name
    }
    
    public mutating func getCard(card: Card) {
        cards.append(card)
    }
}

