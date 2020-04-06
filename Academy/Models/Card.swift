//
//  Cards.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public struct Card {
    public var suit: Suit
    public var rank: Rank
    
    public static func getCards() -> [Card] {
        var allCards = [Card]()
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                let card = Card(suit: suit, rank: rank)
                allCards.append(card)
            }
        }        
        return allCards
    }
}
