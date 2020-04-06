//
//  PersonForm.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 02/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct PersonForm: View {
    var numberOfPlayers: Int
        
    @ObservedObject var academyVM: AcademyViewController
    
    var body: some View {
        VStack{
            Text("Enter player names")
                .font(.subheadline)
                .foregroundColor(.white)
                .bold()
            ForEach(0..<numberOfPlayers) { textFieldNum in
                TextField("Enter name: ", text: self.$academyVM.names[textFieldNum])
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        
    }
}

struct PersonForm_Previews: PreviewProvider {
    static var previews: some View {
        PersonForm(numberOfPlayers: 2, academyVM: AcademyViewController())
    }
}
