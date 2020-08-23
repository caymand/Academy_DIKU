//
//  playerDetails.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 09/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct playerDetails: View {
    var player: Player
    var body: some View {
        NavigationView {
            List(player.cards, id: \.self) { card in
                playerDetailRow(card: card)
            }
        }.navigationBarTitle("\(player.name) score", displayMode: .automatic)
    }
}

//struct playerDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        playerDetails()
//    }
//}
