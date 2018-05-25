//
//  CodilityLesson2Tests.swift
//  CodilityTests
//
//  Created by Gaston Montes on 25/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import XCTest

class CodilityLesson2Tests: XCTestCase {
    // MARK: - Cyclic rotation test.
    func testArrayRotation() {
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 0), [3, 8, 9, 7, 6])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 1), [6, 3, 8, 9, 7])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 2), [7, 6, 3, 8, 9])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 3), [9, 7, 6, 3, 8])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 4), [8, 9, 7, 6, 3])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 5), [3, 8, 9, 7, 6])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 6), [6, 3, 8, 9, 7])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 7), [7, 6, 3, 8, 9])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 8), [9, 7, 6, 3, 8])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 9), [8, 9, 7, 6, 3])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 10), [3, 8, 9, 7, 6])
        XCTAssertEqual([3, 8, 9, 7, 6].arrayCyclicRotation(withRotations: 50), [3, 8, 9, 7, 6])
        XCTAssertEqual([0, 0, 0].arrayCyclicRotation(withRotations: 1), [0, 0, 0])
        XCTAssertEqual([1, 2, 3, 4].arrayCyclicRotation(withRotations: 4), [1, 2, 3, 4])
        XCTAssertEqual([].arrayCyclicRotation(withRotations: 4), [])
    }
}
