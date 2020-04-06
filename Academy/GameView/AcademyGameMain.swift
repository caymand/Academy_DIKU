//
//  AcademyGameMain.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 02/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct AcademyGameMain: View {
    public var game: Game
    
    init(game: Game) {
        self.game = game
    }
    
    var body: some View {
        Text("Sips: \(game.sipsPerBeer), \(game.players[0].name)")
    }
}

struct AcademyGameMain_Previews: PreviewProvider {
    static var previews: some View {
        AcademyGameMain(game: Game(players: [Player(name: "Kristoffer")], sipsPerBeer: 14))
    }
}
