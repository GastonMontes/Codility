//
//  CodilityLesson3Test.swift
//  CodilityTests
//
//  Created by Gaston Montes on 28/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import XCTest

class CodilityLesson3Test: XCTestCase {
    // MARK: - Frog test functions.
    func frogJumps(initialPos: Int, targetPos: Int, jumpDistance: Int) -> Int {
        let jumpsRest = Double(targetPos - initialPos)
        let jumpsDiv = Double(jumpsRest / Double(jumpDistance))
        return Int(jumpsDiv.rounded(.up))
    }
    
    func testFrogJumps() {
        XCTAssertEqual(self.frogJumps(initialPos: 10, targetPos: 85, jumpDistance: 30), 3)
        XCTAssertEqual(self.frogJumps(initialPos: 1, targetPos: 1, jumpDistance: 1), 0)
        XCTAssertEqual(self.frogJumps(initialPos: 1, targetPos: 2, jumpDistance: 1), 1)
        XCTAssertEqual(self.frogJumps(initialPos: 1, targetPos: 1000000000, jumpDistance: 1), 999999999)
        XCTAssertEqual(self.frogJumps(initialPos: 1000000000, targetPos: 1000000000, jumpDistance: 1), 0)
        XCTAssertEqual(self.frogJumps(initialPos: 999999999, targetPos: 1000000000, jumpDistance: 1), 1)
        XCTAssertEqual(self.frogJumps(initialPos: 10, targetPos: 120, jumpDistance: 10), 11)
    }
    
    func testMissingElement() {
        XCTAssertEqual([2, 3, 1, 5].arrayMissingElement(), 4)
        XCTAssertEqual([2, 3, 1, 5, 6, 7, 4].arrayMissingElement(), 8)
    }
    
    func testSplittedPartsValue() {
        XCTAssertEqual([-10, -20, -30, -40, 100].arrayMinDifferenceOfSplit(), 20)
        XCTAssertEqual([3, 1, 2, 4, 3].arrayMinDifferenceOfSplit(), 1)
        XCTAssertEqual([-5, 8].arrayMinDifferenceOfSplit(), 13)
        XCTAssertEqual([8, 9, 5, 3, 4, 2].arrayMinDifferenceOfSplit(), 3)
    }
}
