import UIKit

// --------------------------------------------------------------------- FizzBuzz example ----------------------------------------------------------------------
//func fizzBuzz(n: Int) -> Void {
//    var fizzBuzzList = ["1", "Fizz", "Buzz", "FizzBuzz"]
//
//    for integer in 1...n {
//        fizzBuzzList[0] = "\(integer)"
//        var listIndex = integer % 3 == 0 ? 1 : 0
//        listIndex += integer % 5 == 0 ? 2 : 0
//        print(fizzBuzzList[listIndex])
//    }
//}
//
//fizzBuzz(n: 15)

// #############################################################################################################################################################
// # ------------------------------------------------------------------------ Chapter 1 -----------------------------------------------------------------------#
// #############################################################################################################################################################

// ------------------------------------------------------------------------ Binary Gap -------------------------------------------------------------------------
//public func solution(_ N : Int) -> Int {
//    var binaryNumberString = String(N, radix: 2)
//    var binaryGap = 0
//
//    while let indexOfOne = binaryNumberString.firstIndex(of: "1") {
//        let indexOfOnePlusOne = binaryNumberString.index(indexOfOne, offsetBy: 1)
//        binaryNumberString = String(binaryNumberString[indexOfOnePlusOne...])
//
//
//        if let secondIndex = binaryNumberString.firstIndex(of: "1") {
//            let secondIndexInt = binaryNumberString.distance(from: binaryNumberString.startIndex, to:secondIndex)
//            binaryGap = (secondIndexInt > binaryGap) ? secondIndexInt : binaryGap
//        }
//    }
//
//    return binaryGap
//}
//
//print(String(9, radix: 2)) // -> 1001.
//print(String(529, radix: 2)) // -> 1000010001.
//print(String(20, radix: 2)) // -> 10100.
//print(String(15, radix: 2)) // -> 1111.
//print(String(32, radix: 2)) // -> 100000.
//print(String(1041, radix: 2)) // -> 10000010001.
//
//print(solution(9)) // -> 2.
//print(solution(529)) // -> 4.
//print(solution(20)) // -> 1.
//print(solution(15)) // -> 0.
//print(solution(32)) // -> 0.
//print(solution(1041)) // -> 5.

// #############################################################################################################################################################
// # ------------------------------------------------------------------------ Chapter 2 -----------------------------------------------------------------------#
// #############################################################################################################################################################

// --------------------------------------------------------------------- Cyclic Rotation -----------------------------------------------------------------------
//public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
//    guard K > 0 && A.count > 0 && K % A.count != 0 else {
//        return A
//    }
//
//    var rotations = K % A.count
//
//    while rotations > A.count {
//        rotations -= A.count
//    }
//
//    let count = A.count - rotations
//    let moveToEnd = A[0..<count]
//    let moveToFront = A[count...]
//
//    return Array(moveToFront + moveToEnd)
//}
//
//var firstList = [3, 8, 9, 7, 6]
//var secondList = [0, 0, 0]
//var thirdList = [1, 2, 3, 4]
//var fourthList = [9, 7, 6, 3, 8]
//var emptyList: [Int] = []
//var loopList = [1, 2, 3, 4]
//var bigRotationList = [3, 8, 9, 7, 6]
//
//print(solution(&firstList, 3)) // -> [9, 7, 6, 3, 8]
//print(solution(&secondList, 1)) // -> [0, 0, 0]
//print(solution(&thirdList, 4)) // -> [1, 2, 3, 4]
//print(solution(&fourthList, 2)) // -> [3, 8, 9, 7, 6]
//print(solution(&emptyList, 2)) // -> []
//print(solution(&loopList, 12)) // -> [1, 2, 3, 4]
//print(solution(&bigRotationList, 17)) // -> [7, 6, 3, 8, 9]

// ---------------------------------------------------------------- Odds Occurrences In Array ------------------------------------------------------------------
public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 1 else {
        return A.first!
    }

    let arrayToDictiornary = A.reduce(into: [Int: Int]()) { $0[$1] = ($0[$1] != nil) ? $0[$1]! + 1 : 1 }
    
    return arrayToDictiornary.reduce(A.first!) { (result, tupleOfKeyAndValue) in
        return (tupleOfKeyAndValue.value % 2 != 0) ? tupleOfKeyAndValue.key : result
    }
}

var firstList = [9, 3, 9, 3, 9, 7, 9]
var secondList = [1, 2, 3, 4, 5, 4, 3, 2, 1]
var thirdList = [1, 2, 1]
var fourthList = [0, 5, 0, 5, 4]
var zerosList = [0, 0, 0]
var equalsList = [3, 3, 3]
var just1Element = [9]

print(solution(&firstList)) // -> 7.
print(solution(&secondList)) // -> 5.
print(solution(&thirdList)) // -> 2.
print(solution(&fourthList)) // -> 4.
print(solution(&zerosList)) // -> 0.
print(solution(&equalsList)) // -> 3.
print(solution(&just1Element)) // -> 9.
