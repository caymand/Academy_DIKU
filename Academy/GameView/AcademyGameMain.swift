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
    @State var presentStopWatch = false
    @State var currentPlayer: Player?
    @State var stopwatchFinishedPresenting = false
    @State var time = 0
    
    init(game: Game?) {
        self.game = game
        academyGameMainVM = AcademyGameMainVM(game: game)
        cardsVM = CardsVM(game: game)
        currentPlayer = game?.currentPlayer
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text(academyGameMainVM.currentPlayer.name)
                CardsView(cardsVM: cardsVM)
                Spacer()
                if cardsVM.cardIsFlipped && !cardsVM.aceWasFlipped {
                    Button(action: {
                        self.academyGameMainVM.updateGameState()
                        self.cardsVM.nextPlayer()
                        self.academyGameMainVM.nextPlayer()
                    }
                        ) {
                            Text("Next Player")
                    }

                } else if stopwatchFinishedPresenting {
                    Button(action: {
                        self.stopwatchFinishedPresenting = false
                        self.academyGameMainVM.updateGameState(chuggedBeerTime: self.time)
                        
                        self.cardsVM.flipCard()
                        self.cardsVM.nextPlayer()
                        self.academyGameMainVM.nextPlayer()
                    }
                        ) {
                        Text("Next Player")
                    }
                } else if cardsVM.cardIsFlipped && cardsVM.aceWasFlipped {
                    Button(action: {
                        self.presentStopWatch.toggle()
                    }
                        ) {
                            Text("Drinking Challenge")
                    }.sheet(isPresented: $presentStopWatch) {
                        StopwatchView(showStopwatch: self.$presentStopWatch, time: self.$time, finishedPresenting: self.$stopwatchFinishedPresenting)
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
