//
//  AcademyGamMainVM.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 06/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation
import UIKit

class CardsVM: ObservableObject {
    public var cardIsFlipped = false
    
    public func cardToImage(card: Card) -> UIImage {
        return UIImage(named: "blue_back")!
    }
}
