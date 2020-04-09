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
    @Published var currentPlayer: Player!
    @Published var showNextPlayer = false
    
    init(game: Game?) {
        self.game = game
        currentPlayer = game?.currentPlayer
    }
    
    public func nextPlayer() {
        currentPlayer = game.nextPlayer()
    }
    
}
