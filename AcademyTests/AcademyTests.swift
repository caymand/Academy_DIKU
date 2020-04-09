//
//  AcademyTests.swift
//  AcademyTests
//
//  Created by Kristoffer Kortbaek on 31/03/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import XCTest
@testable import Academy

class AcademyTests: XCTestCase {
    
    var game = Game(players: [Player(name: "K")], sipsPerBeer: 12)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testAllCardsExist() throws {
//        //Arrange
//        let cards = game.allCards
//        var allCards = [Card]()
//
//        for suit in Suit.allCases {
//            for rank in Rank.allCases {
//                allCards.append(Card(suit: suit, rank: rank))
//            }
//        }
//        //Act
//
//        //Assert
//        for i in 0..<cards.count {
//            print("TEST: \(allCards[i].rank), \(allCards[i].suit)")
//            XCTAssert(cards[i].rank == allCards[i].rank && cards[i].suit == allCards[i].suit )
//        }
//
//    }
    func testRemovesFirstCard() {
        //Arrange
        let firstCard = game.allCards[0]
        
        //Act
        let removedCard = game.delegateCard()
        
        //Assert
        XCTAssert(firstCard.rank == removedCard.rank && firstCard.suit == removedCard.suit)
    }
    

}
