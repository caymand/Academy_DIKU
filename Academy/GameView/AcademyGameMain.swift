//
//  AcademyGameMain.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 02/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct AcademyGameMain: View {
    private var game: Game!
    @ObservedObject var academyGameMainVM: AcademyGameMainVM
    
    init(game: Game?) {
        self.game = game
        academyGameMainVM = AcademyGameMainVM(game: game)
    }
    
    var body: some View {
        VStack {
            Text(academyGameMainVM.currentPlayer.name)
            CardsView(game: game)
        }
    }
}

struct AcademyGameMain_Previews: PreviewProvider {
    static var previews: some View {
        AcademyGameMain(game: Game(players: [Player(name: "Kristoffer")], sipsPerBeer: 14))
    }
}
