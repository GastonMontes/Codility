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
    func testReverseString() {
        XCTAssertTrue(canReverseString("la concha de tu hermana all boys"))
        XCTAssertEqual(reverseString("la concha de tu hermana all boys"), "syob lla anamreh ut ed ahcnoc al")
    }
    
    func testNestedParentheses() {
        XCTAssertTrue(areParenthesesCorrectlyNested("( )"))
        XCTAssertTrue(areParenthesesCorrectlyNested("( ( ) ) ( )"))
        XCTAssertFalse(areParenthesesCorrectlyNested(" ( ( )"))
        XCTAssertFalse(areParenthesesCorrectlyNested(") ) ) ( ( ("))
        XCTAssertFalse(areParenthesesCorrectlyNested(")("))
        XCTAssertTrue(areParenthesesCorrectlyNested(""))
        XCTAssertTrue(areParenthesesCorrectlyNested(" "))
        XCTAssertTrue(areParenthesesCorrectlyNested("()(((())))"))
        XCTAssertFalse(areParenthesesCorrectlyNested(")"))
        XCTAssertFalse(areParenthesesCorrectlyNested("("))
        XCTAssertTrue(areParenthesesCorrectlyNested("[]"))
        XCTAssertTrue(areParenthesesCorrectlyNested("Texto de prueba (Para Codility) que me permite testear los parentesis de la oracion (No sirve de mucho que digamos)"))
    }
    
    func testMinPositiveIntegerNotIncludeInList() {
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [200, 300, 3400, -34324, -3244, 2, 3, 4]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 6, 3, 9, 4, 6]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [-1, -3]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 2, 3]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [0]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [2]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [0, 2, 2, 1, 1]), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1,2,2,1,3,1,0,4,0]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [2, 3, 7, 6, 8, -1, -10, 15]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [2, 3, -7, 6, 8, 1, -10, 15]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 1, 0, -1, -2]), 2)
        
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [200, 300, 3400, -34324, -3244, 2, 3, 4]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1, 6, 3, 9, 4, 6]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [-1, -3]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1, 2, 3]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [0]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [2]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [0, 2, 2, 1, 1]), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1,2,2,1,3,1,0,4,0]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [2, 3, 7, 6, 8, -1, -10, 15]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [2, 3, -7, 6, 8, 1, -10, 15]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn2(integersList: [1, 1, 0, -1, -2]), 2)
        
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [200, 300, 3400, -34324, -3244, 2, 3, 4]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1, 6, 3, 9, 4, 6]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [-1, -3]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1, 2, 3]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [0]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [2]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [0, 2, 2, 1, 1]), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1,2,2,1,3,1,0,4,0]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [2, 3, 7, 6, 8, -1, -10, 15]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [2, 3, -7, 6, 8, 1, -10, 15]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn3(integersList: [1, 1, 0, -1, -2]), 2)
        
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [200, 300, 3400, -34324, -3244, 2, 3, 4]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1, 6, 3, 9, 4, 6]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [-1, -3]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1, 2, 3]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [0]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [2]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [0, 2, 2, 1, 1]), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1,2,2,1,3,1,0,4,0]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [2, 3, 7, 6, 8, -1, -10, 15]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [2, 3, -7, 6, 8, 1, -10, 15]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn4(integersList: [1, 1, 0, -1, -2]), 2)
        
        var list1 = [200, 300, 3400, -34324, -3244, 2, 3, 4]
        var list2 = [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]
        var list3 = [1, 6, 3, 9, 4, 6]
        var list4 = [1, 3, 6, 4, 1, 2]
        var list5 = [-1, -3]
        var list6 = [1, 2, 3]
        var list7 = [0]
        var list8 = [1]
        var list9 = [2]
        var list10 = [0, 2, 2, 1, 1]
        var list11 = [1,2,2,1,3,1,0,4,0]
        var list12 = [2, 3, 7, 6, 8, -1, -10, 15]
        var list13 = [2, 3, -7, 6, 8, 1, -10, 15]
        var list14 = [1, 1, 0, -1, -2]
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list1), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list2), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list3), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list4), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list5), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list6), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list7), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list8), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list9), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list10), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list11), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list12), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list13), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn5(integersList: &list14), 2)
        
        list1 = [200, 300, 3400, -34324, -3244, 2, 3, 4]
        list2 = [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]
        list3 = [1, 6, 3, 9, 4, 6]
        list4 = [1, 3, 6, 4, 1, 2]
        list5 = [-1, -3]
        list6 = [1, 2, 3]
        list7 = [0]
        list8 = [1]
        list9 = [2]
        list10 = [0, 2, 2, 1, 1]
        list11 = [1,2,2,1,3,1,0,4,0]
        list12 = [2, 3, 7, 6, 8, -1, -10, 15]
        list13 = [2, 3, -7, 6, 8, 1, -10, 15]
        list14 = [1, 1, 0, -1, -2]
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list1), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list2), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list3), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list4), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list5), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list6), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list7), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list8), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list9), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list10), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list11), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list12), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list13), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn6(integersList: &list14), 2)
        
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [200, 300, 3400, -34324, -3244, 2, 3, 4]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1, 6, 3, 9, 4, 6, 1, 3, 6, 4, 1, 2, -1, -3, 1, 2, 3]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1, 6, 3, 9, 4, 6]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1, 3, 6, 4, 1, 2]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [-1, -3]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn(integersList: [1, 2, 3]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [0]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1]), 2)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [2]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [0, 2, 2, 1, 1]), 3)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1,2,2,1,3,1,0,4,0]), 5)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [2, 3, 7, 6, 8, -1, -10, 15]), 1)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [2, 3, -7, 6, 8, 1, -10, 15]), 4)
        XCTAssertEqual(minPositiveIntegerNotIncludedIn7(integersList: [1, 1, 0, -1, -2]), 2)
    }

    func testBinaryGapFunction() {
        XCTAssertTrue(9.binaryGap() == 2)
        XCTAssertTrue(529.binaryGap() == 4)
        XCTAssertTrue(20.binaryGap() == 1)
        XCTAssertTrue(15.binaryGap() == 0)
        XCTAssertTrue(1041.binaryGap() == 5)
        XCTAssertTrue(13.binaryGap() == 1)
    }
}
