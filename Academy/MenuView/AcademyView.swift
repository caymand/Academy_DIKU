//
//  AcademyView.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import SwiftUI

struct AcademyView: View {
    
    @ObservedObject var academyVM = AcademyViewController()
    @State var shouldTransition = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Academy")
                        .font(.title)
                        .padding(.top)
                        .padding(.bottom, 50)
                    Text("Enter number of sips for a beer: ")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .bold()
                    TextField("number of sips", text: $academyVM.numberOfSips)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Choose number of players: ")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    PlayerNumberView(academyVM: academyVM)
                        .padding(.bottom, 50)
                    Spacer()
                    NavigationLink(destination: AcademyGameMain(game: academyVM.getGame), isActive: $shouldTransition) {
                        Text("Begin")
                            .foregroundColor(.white)
                            .font(.title)
                            .onTapGesture {
                                print(self.academyVM.canCreateGame)
                                self.shouldTransition = self.academyVM.canCreateGame
                            }
                    }
                }
            }
        }
    }
}

struct AcademyView_Preview: PreviewProvider {
    static var previews: some View {
        AcademyView(academyVM: AcademyViewController())
    }
}
