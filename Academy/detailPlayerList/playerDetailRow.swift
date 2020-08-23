//
//  playerDetailRow.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 09/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct playerDetailRow: View {
    var card: Card
    
    var body: some View {
        HStack {
            Image(card.nameForCard())
                .resizable()
                .frame(width: 50, height: 50)
            Text(card.nameForCard())
        }
    }
}

//struct playerDetailRow_Previews: PreviewProvider {
//    static var previews: some View {
//        playerDetailRow()
//    }
//}
