//
//  Cards.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public struct Card: Hashable {
    
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
        allCards.shuffle()
        return allCards
    }
    
    private func beginStopWatch() {
        print("Start drinking")
    }

    
    public func sipsForCard() -> Int {
        switch rank {
        case .ace:
            beginStopWatch()
            return 14
        default:
            return rank.rawValue
        }
    }
    
    public func nameForCard() -> String {
        var cardImageName = ""
        switch rank {
        case .ace:
            cardImageName += "A"
        case .jack:
            cardImageName += "J"
        case .queen:
            cardImageName += "Q"
        case .king:
            cardImageName += "K"
        default:
            cardImageName += String(rank.rawValue)
        }
        switch suit {
        case .spades:
            cardImageName += "S"
        case .clubs:
            cardImageName += "C"
        case .diamonds:
            cardImageName += "D"
        case .hearts:
            cardImageName += "H"
        }
        return cardImageName
    }
}
