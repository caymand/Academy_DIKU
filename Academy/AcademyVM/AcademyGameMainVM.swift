//
//  AcademyGameMainVM.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 06/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

class AcademyGameMainVM: ObservableObject {
    private var game: Game!
    private var cardsVM: CardsVM
    
    @Published var currentPlayer: Player!
    @Published var showNextPlayer = false
        
    init(game: Game?) {
        self.game = game
        currentPlayer = game?.currentPlayer
        cardsVM = CardsVM(game: game)
    }

    public var getCardsVM: CardsVM {
        return cardsVM
    }
    
    public var players: [Player] {
        return game.players
    }
    
    public func nextPlayer() {
        currentPlayer = game.nextPlayer()        
    }
    
    public func updateGameState(chuggedBeerTime: Int) {
        game.givePlayerPoints(chuggedBeerTime: chuggedBeerTime)
    }
    
    public func updateGameState() {
        game.givePlayerPoints(chuggedBeerTime: nil)
    }
    
}
