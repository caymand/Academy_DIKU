//
//  AcademyViewController.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 03/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public class AcademyViewController: ObservableObject {
    private var game: Game?
    private var players: [Player]?
    
    @Published var numberOfSips = ""
    @Published var numberOfPlayers = ""
    @Published var names = ["", "", "", "", "", ""]
    
    private func playerIsAdded(playerName: String) -> Bool {
        let player = Player(name: playerName)
        if let players = players {
            return players.contains(player)
        } else {
            return false
        }
    }
    
    private func createGame() {
        if let numSips = Int(numberOfSips) {
            if let playerNum = Int(numberOfPlayers) {
    
                for i in 0..<playerNum {
                    if names[i] != "" {
                        guard playerIsAdded(playerName: names[i]) == false else {return}
                        if players == nil {
                            players = [Player(name: names[i])]

                        } else {
                            players?.append(Player(name: names[i]))
                        }
                    }
                }
                
                if players?.count == playerNum {
                    game = Game(players: players!, sipsPerBeer: numSips)
                }
            }
        }
    }
    
    public var getGame: Game? {
        return game
    }
    
    public var canCreateGame: Bool {
        createGame()
        if game != nil {
            return true
        } else {
            return false
        }
    }
    
}
