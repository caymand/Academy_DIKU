//
//  Player.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public struct Player: Equatable, Identifiable {
    private var sipsToTake = 0    
    private var score = 0
    
    public var id = UUID()
    public var beersDrinken = 0
    public var name: String
    public var cards = [Card]()
    
    init(name: String) {
        self.name = name        
    }
    
    public var sipsTaken: Int {
        get {
            return sipsToTake
        }
    }
    
    
    public var points: Int {
        return score
    }
    
    public static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name
    }
    
    public mutating func getCard(card: Card) {
        sipsToTake = card.rank.rawValue
        cards.append(card)
    }
    
    public mutating func finishBeer() {
        beersDrinken += 1
        sipsToTake = 0
    }
    
    public mutating func recievePoints(_ points: Int) {
        score += points
        print("Score: \(score)")
    }
}

