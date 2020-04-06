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
    private var players = [Player]()

    @Published var numberOfSips = ""
    @Published var buttonTapped = ""
    @Published var names = ["", "", "", "", "", ""]
    
    public var getGame: Game {
        if let numSips = Int(numberOfSips) {
            for name in names {
                if name != "" {
                    players.append(Player(name: name))
                }
            }
            game = Game(players: players, sipsPerBeer: numSips)            
            return game!
        } else {
            return Game(players: [Player(name: "Default Player")], sipsPerBeer: 14)
        }
    }
//
//    public var getGame: Game {
//        if let g = game {
//            return g
//        } else {
//            return Game(players: [Player(name: "Default Player")], sipsPerBeer: 14)
//        }
//    }
}
