//
//  Game.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import UIKit

public struct Game {
    public var allCards = Card.getCards()
    public var sipsPerBeer: Int
    //Temp public only
    public var players: [Player]
    
    init(players: [Player], sipsPerBeer: Int) {
        self.players = players
        self.sipsPerBeer = sipsPerBeer
        allCards.shuffle()
    }
    
    public mutating func delegateCard() -> Card {
        return allCards.removeFirst()
    }
    
}
