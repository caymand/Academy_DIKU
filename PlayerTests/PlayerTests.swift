//
//  PlayerTests.swift
//  PlayerTests
//
//  Created by Kristoffer Kortbaek on 01/04/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import XCTest

@testable import Academy

class PlayerTests: XCTestCase {

    var player = Player(sipsPerBeer: 12)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPlayerDrinksBeer() {
        //Arrange
        let sipsLeft = player.sipsLeft - 5
        //Act
        player.drink(sips: 5)
        
        //Assert
        XCTAssert(player.sipsLeft == sipsLeft)
    }

    
}
