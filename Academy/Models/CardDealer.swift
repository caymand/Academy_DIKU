//
//  CardDealer.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 30/06/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

//First created as struct but later made a class to get pass by reference
public class CardDealer {
    public var cards: [Card]
    private var currentCard: Card
    
    init(cards: [Card]) {
        self.cards = cards
        currentCard = self.cards.removeFirst()
    }
    
    public var getCurrentCard: Card {
        get {
            return currentCard
        }
    }
    
    //TODO: Might throw if the card deck is empty - fix later
    public func drawNewCard() {
        currentCard = cards.removeFirst()
    }
    
    
    
}
