//
//  AcademyGamMainVM.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 06/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import UIKit

class CardsVM: ObservableObject {
    private var game: Game!
    private var currentCard: Card?
    @Published var cardIsFlipped = false
    
    init(game: Game?) {
        self.game = game
    }
    
//    If there is no current card, the first card in the deck of cards is returned
    public var getCard: Card {
        if let card = currentCard {
            return card
        } else {
            return game.allCards.removeFirst()
        }
    }
    
    private func nextCard() {
        currentCard = game.delegateCard()
    }
    
    public func flipCard() {
        nextCard()
        cardIsFlipped = true
        if let card = currentCard {
            game.currentPlayer.getCard(card: card)
        }
    }
    
    public func nextPlayer() {
        cardIsFlipped = false
    }
    
    public func nextCardImageName() -> String {
        var cardImageName = ""
        if let rank = currentCard?.rank {
            if let suit = currentCard?.suit {
                
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
            }
        } else {
            //TODO: Remove card from array
            cardImageName = "3C"
        }
        return cardImageName
    }
    
}
