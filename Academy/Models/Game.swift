//
//  Game.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import UIKit

public struct Game: CustomStringConvertible {
    //Private
    private var currentPlayerIndex = 0
    //Public
    public var allCards = Card.getCards()
    public var sipsPerBeer: Int
    //Temp public only
    public var players: [Player]
    
    init(players: [Player], sipsPerBeer: Int) {
        self.players = players
        self.sipsPerBeer = sipsPerBeer
        allCards.shuffle()
    }
    
    public var description: String {
        return "PlayerNum: \(players.count)"
    }
    
    public var currentPlayer: Player {
        return players[currentPlayerIndex]
    }
    
    public mutating func delegateCard() -> Card {
        return allCards.removeFirst()
    }
    
    private mutating func nextPlayerIndex() {
        if currentPlayerIndex < (players.count - 1){
            currentPlayerIndex += 1
        } else {
            currentPlayerIndex = 0
        }
    }
    
    public mutating func nextPlayer() -> Player{
        nextPlayerIndex()
        return players[currentPlayerIndex]
    }
}
