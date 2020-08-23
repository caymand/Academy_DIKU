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
//    private var currentCard: Card?
    //TODO: weird to have cardDealer field? Bad design?
    private var cardDealer: CardDealer
    @Published var cardIsFlipped = false
    
    init(game: Game?) {
        self.game = game
        cardDealer = self.game.getCardDealer
    }
    
    public var sipsForCard: Int {
        get {
            return cardDealer.getCurrentCard.sipsForCard()
        }
    }
    
    public var aceWasFlipped: Bool {
        get {
            return cardDealer.getCurrentCard.rank == Rank.ace
        }
    }
    
    public func flipCard() {
        cardIsFlipped = true
        game.currentPlayer.getCard(card: cardDealer.getCurrentCard)
        if game.currentPlayer.sipsTaken >= game.sipsPerBeer {
            game.currentPlayer.finishBeer()
        }   
    }
    
    public func nextPlayer() {
        cardIsFlipped = false
        cardDealer.drawNewCard()
    }
    
    
    public func nextCardImageName() -> String {
        return cardDealer.getCurrentCard.nameForCard()
    }
    
}

