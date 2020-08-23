//
//  AcademyGameMotherView.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 01/07/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct AcademyGameMotherView: View {
    private var game: Game!
    init(game: Game?) {
        self.game = game
    }
    var body: some View {
        AcademyGameMain(game: game)        
    }
    
}
