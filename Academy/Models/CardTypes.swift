//
//  CardTypes.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public enum Rank: Int, CaseIterable {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    public func numberOfSips(sipsForChug: Int) -> Int {
        switch self {
        case .ace:
            return sipsForChug
        default:
            return self.rawValue
        }
    }
}

public enum Suit: CaseIterable {
    case spades, clubs, diamonds, hearts
}

