//
//  CodilityLesson4Test.swift
//  CodilityTests
//
//  Created by Gaston Montes on 04/06/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import XCTest

class CodilityLesson4Test: XCTestCase {
    func testFrogCrossRiver() {
        XCTAssertEqual([1, 3, 1, 4, 2, 3, 5, 4].arrayFrogCanCross(to: 5), 6)
    }
}
