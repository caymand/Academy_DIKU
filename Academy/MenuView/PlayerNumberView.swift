//
//  PlayerNumberView.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 01/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct PlayerNumberView: View {
    
    @ObservedObject var academyVM: AcademyViewController
    @State private var showPersonForm = false
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(["1", "2", "3", "4", "5", "6"], id: \.self) { button in
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.25)) {
                        self.academyVM.numberOfPlayers = button
                        self.showPersonForm = true
                        }
                    })
                    {
                    Text(button)
                        .font(.system(size: 32))
                        .frame(width: 60, height: 80)
                        .background((self.academyVM.numberOfPlayers == button) ? Color.yellow : Color.white)
                        .foregroundColor(.black)
                        .padding(.bottom, 20)
                    }
                }
            }
            if self.showPersonForm {
                PersonForm(numberOfPlayers: Int(academyVM.numberOfPlayers)!, academyVM: academyVM)
            }
        }
    }
}

struct PlayerNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerNumberView(academyVM: AcademyViewController())
    }
}
