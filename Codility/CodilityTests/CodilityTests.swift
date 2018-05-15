//
//  CodilityTests.swift
//  CodilityTests
//
//  Created by Gaston Montes on 5/15/18.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import XCTest
@testable import Codility

class CodilityTests: XCTestCase {
    // MARK: - Binary gap testing.
    func testBinaryGapFunction() {
        XCTAssertTrue(9.binaryGap() == 2)
        XCTAssertTrue(529.binaryGap() == 4)
        XCTAssertTrue(20.binaryGap() == 1)
        XCTAssertTrue(15.binaryGap() == 0)
        XCTAssertTrue(1041.binaryGap() == 5)
        XCTAssertTrue(13.binaryGap() == 1)
    }
}
