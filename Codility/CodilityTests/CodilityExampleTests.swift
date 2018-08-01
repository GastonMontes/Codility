//
//  CodilityExampleTests.swift
//  CodilityTests
//
//  Created by Gaston Montes on 25/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import XCTest
@testable import Codility

class CodilityExampleTests: XCTestCase {
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
    
    func testBalancedBrakets() {
        let string1 = "{[()]}"
        let string2 = "{[(])}"
        let string3 = "{{[[(())]]}}"
        
        print("Balance 1")
        let balanced1 = areBraketsBalanced(inputArray: [string1, string2, string3])
        XCTAssertTrue(balanced1[0])
        XCTAssertFalse(balanced1[1])
        XCTAssertTrue(balanced1[2])
        
        print("Balance 2")
        let balanced2 = areBraketsBalanced(inputArray: [string3, string1, string2, string2])
        XCTAssertTrue(balanced2[0])
        XCTAssertTrue(balanced2[1])
        XCTAssertFalse(balanced2[2])
        XCTAssertFalse(balanced2[3])
        
        print("Balance 3")
        let balanced3 = areBraketsBalanced(inputArray: [string2, string3, string1])
        XCTAssertFalse(balanced3[0])
        XCTAssertTrue(balanced3[1])
        XCTAssertTrue(balanced3[2])
        
        print("Balance 4")
        let balanced4 = areBraketsBalanced(inputArray: [string1, string3, string2])
        XCTAssertTrue(balanced4[0])
        XCTAssertTrue(balanced4[1])
        XCTAssertFalse(balanced4[2])
        
        print("Balance 5")
        let balanced5 = areBraketsBalanced(inputArray: [string2, string1, string3])
        XCTAssertFalse(balanced5[0])
        XCTAssertTrue(balanced5[1])
        XCTAssertTrue(balanced5[2])
        
        print("Balance 6")
        let balanced6 = areBraketsBalanced(inputArray: [string3, string2, string1])
        XCTAssertTrue(balanced6[0])
        XCTAssertFalse(balanced6[1])
        XCTAssertTrue(balanced6[2])
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
}
