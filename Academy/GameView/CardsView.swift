//
//  CardsView.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 06/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    @ObservedObject var cardsVM: CardsVM
    init(cardsVM: CardsVM) {
        self.cardsVM = cardsVM
    }
    
    var body: some View {
        VStack{
            Button(action: cardsVM.flipCard) {
                Image(cardsVM.cardIsFlipped ? cardsVM.nextCardImageName() : "blue_back")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
            }.disabled(cardsVM.cardIsFlipped)
            
            if cardsVM.cardIsFlipped {
                Text("Sips: \(cardsVM.getCard.sipsForCard())")
//                Spacer()
//                Button(action: cardsVM.nextPlayer) {
//                    Text("Next Player")
//                }
            }
        }
    }
}

