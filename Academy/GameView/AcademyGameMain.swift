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
    @ObservedObject var cardsVM: CardsVM
    @State var presentDetails = false
    
    init(game: Game?) {
        self.game = game
        academyGameMainVM = AcademyGameMainVM(game: game)
        cardsVM = CardsVM(game: game)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text(academyGameMainVM.currentPlayer.name)
                CardsView(cardsVM: cardsVM)
                Spacer()
                if cardsVM.cardIsFlipped {
                    Button(action: {
                        self.cardsVM.nextPlayer()
                        self.academyGameMainVM.nextPlayer()
                    }
                        ) {
                        Text("Next Player")
                    }
                }
            }
        .navigationBarItems(trailing: Button(action: {
            self.presentDetails.toggle()
        }) {
            Text("Details")
        }.sheet(isPresented: $presentDetails) {
            detailsPlayerList(players: self.game.players)
        })
        }
    }
}

struct AcademyGameMain_Previews: PreviewProvider {
    static var previews: some View {
        AcademyGameMain(game: Game(players: [Player(name: "Kristoffer")], sipsPerBeer: 14))
    }
}
