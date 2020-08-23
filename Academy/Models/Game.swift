//
//  Game.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import UIKit

public class Game: CustomStringConvertible {
    //Private
    private var currentPlayerIndex = 0
    private var roundNumber = 0
    private var cardDealer: CardDealer
    
    //Public
    public var sipsPerBeer: Int
    
    //Temp public only
    public var players: [Player]
    
    init(players: [Player], sipsPerBeer: Int) {
        self.players = players
        self.sipsPerBeer = sipsPerBeer
        cardDealer = CardDealer(cards: Card.getCards())
    }
    
    public var description: String {
        return "PlayerNum: \(players.count)"
    }
    
    public var getCardDealer: CardDealer {
        get {
            return cardDealer
        }
    }
    
    public var currentPlayer: Player {
        get {
            return players[currentPlayerIndex]
        }
        set(newValue) {
            players[currentPlayerIndex] = newValue
        }
    }

    private func nextPlayerIndex() {
        if currentPlayerIndex < (players.count - 1){
            currentPlayerIndex += 1
        } else {
            currentPlayerIndex = 0
        }
    }

    public func nextPlayer() -> Player{
        nextPlayerIndex()
        return players[currentPlayerIndex]
    }
    //Calculates how many points a player should recieve from drinking a beer.
    //If the player chugs a beer, the points are given with respect to time to finish.
    public func givePlayerPoints(chuggedBeerTime: Int?) {
        let points = cardDealer.getCurrentCard.rank.rawValue
        print("Points: \(points)")
        if let time = chuggedBeerTime {
            if time <= sipsPerBeer {
                currentPlayer.recievePoints(points)
            } else {
                currentPlayer.recievePoints(points - (time - sipsPerBeer) >= 0 ? points - (time - sipsPerBeer) : 0)
            }
        } else {
            currentPlayer.recievePoints(points)
        }
    }
}
