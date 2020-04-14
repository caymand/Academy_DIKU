//
//  detailPlayerRow.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 09/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct detailPlayerRow: View {
    var player: Player
    var body: some View {
        HStack {
            Text(player.name)
            Text("Beers drinken: \(player.beersDrinken)" )
            Text("Cards drawn: \(player.cards.count)" )
        }
    }
}

struct detailPlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        detailPlayerRow(player: Player(name: "Kris"))
    }
}
