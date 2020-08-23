//
//  detailsPlayerList.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 09/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct detailsPlayerList: View {
    var players: [Player]
    var body: some View {
        NavigationView {
            List(players, id: \.id) { player in
                NavigationLink(destination: playerDetails(player: player)) {
                    detailPlayerRow(player: player)
                }
            }
        }
    }
}

//struct detailsPlayerList_Previews: PreviewProvider {
//    static var previews: some View {
//        detailsPlayerList(players: [Player(name: "Kristoffer")])
//    }
//}
