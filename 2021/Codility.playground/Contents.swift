import UIKit

// ---------------------------------------------------------------------- Rappi Exercise -----------------------------------------------------------------------
//func factorial(n: Int) -> Int {
//    return (n <= 1) ? 1 : n * factorial(n: n - 1)
//}
//
//func calculateTeams(totalPlayers: Int, minNumberOfPlayer: Int) -> Int {
//    return factorial(n: totalPlayers) / (factorial(n: totalPlayers - minNumberOfPlayer) * factorial(n: minNumberOfPlayer))
//}
//
//func countTeams(skills: [Int], minPlayers: Int, minLevel: Int, maxLevel: Int) -> Int {
//    guard skills.count > 0 else {
//        return 0
//    }
//
//    let numberOfPlayers = skills.filter({ $0 >= minLevel && $0 <= maxLevel }).count
//
//    if numberOfPlayers < minPlayers {
//        return 0
//    }
//
//    if numberOfPlayers == minPlayers {
//        return 1
//    }
//
//    var numberOfTeams = calculateTeams(totalPlayers: numberOfPlayers, minNumberOfPlayer: minPlayers)
//
//    for minNumOfPlayers in minPlayers + 1...numberOfPlayers {
//        numberOfTeams += calculateTeams(totalPlayers: numberOfPlayers, minNumberOfPlayer: minNumOfPlayers)
//    }
//
//    return numberOfTeams
//}
//
//let skills = [12, 4, 6, 13, 5, 10]
//let skills2 = [4, 4, 8, 5, 6, 1, 5, 7]
//
//countTeams(skills: skills, minPlayers: 3, minLevel: 4, maxLevel: 10) // -> 5.
//countTeams(skills: skills2, minPlayers: 3, minLevel: 4, maxLevel: 10) // -> 3.

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

//fizzBuzz(n: 15)

// #############################################################################################################################################################
// # ------------------------------------------------------------------------ Lesson 1 ------------------------------------------------------------------------#
// # ----------------------------------------------------------------------- Iterations  ----------------------------------------------------------------------#
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
// # ------------------------------------------------------------------------ Lesson 2 ------------------------------------------------------------------------#
// # ------------------------------------------------------------------------- Arrays  ------------------------------------------------------------------------#
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
//public func solution(_ A : inout [Int]) -> Int {
//    guard A.count > 1 else {
//        return A.first!
//    }
//
//    let arrayToDictiornary = A.reduce(into: [Int: Int]()) { $0[$1] = ($0[$1] != nil) ? $0[$1]! + 1 : 1 }
//    
//    return arrayToDictiornary.reduce(A.first!) { (result, tupleOfKeyAndValue) in
//        return (tupleOfKeyAndValue.value % 2 != 0) ? tupleOfKeyAndValue.key : result
//    }
//}
//
//var firstList = [9, 3, 9, 3, 9, 7, 9]
//var secondList = [1, 2, 3, 4, 5, 4, 3, 2, 1]
//var thirdList = [1, 2, 1]
//var fourthList = [0, 5, 0, 5, 4]
//var zerosList = [0, 0, 0]
//var equalsList = [3, 3, 3]
//var just1Element = [9]
//
//print(solution(&firstList)) // -> 7.
//print(solution(&secondList)) // -> 5.
//print(solution(&thirdList)) // -> 2.
//print(solution(&fourthList)) // -> 4.
//print(solution(&zerosList)) // -> 0.
//print(solution(&equalsList)) // -> 3.
//print(solution(&just1Element)) // -> 9.

// #############################################################################################################################################################
// # ------------------------------------------------------------------------ Lesson 3 ------------------------------------------------------------------------#
// # -------------------------------------------------------------------- Time Complexity ---------------------------------------------------------------------#
// #############################################################################################################################################################

// ------------------------------------------------------------------------ Frog Jmp ---------------------------------------------------------------------------
//public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
//    guard X < Y else {
//        return 0
//    }
//
//    let distanceToJump = Y - X
//    let jumpsNeeded = Double(distanceToJump) / Double(D)
//
//    return Int((jumpsNeeded).rounded(.up))
//}
//
//print(solution(10, 85, 30)) // -> 3.

// --------------------------------------------------------------------- Perm Missing Elem ---------------------------------------------------------------------
//public func solution(_ A : inout [Int]) -> Int {
//    let numbersSum = A.reduce(0, +)
//    let rangeListSum = Array(1...A.count + 1).reduce(0, +)
//
//    return rangeListSum - numbersSum
//}
//
//var intList = [2, 3, 1, 5]
//print(solution(&intList)) // - 4.>

// --------------------------------------------------------------------- Tape Equilibrium ----------------------------------------------------------------------
//public func solution(_ A : inout [Int]) -> Int {
//    if A.count == 2 {
//        return abs(A.first! - A.last!)
//    }
//
//    var leftSum = A.first!
//    var rightSum = A.reduce(0, +) - leftSum
//    var minDifference = abs(leftSum - rightSum)
//
//    for index in 1...A.count - 2 {
//        let currentElement = A[index]
//        leftSum += currentElement
//        rightSum -= currentElement
//        let newDifference = abs(leftSum - rightSum)
//
//        if newDifference == 0 {
//            return 0
//        } else if newDifference < minDifference {
//            minDifference = newDifference
//        }
//    }
//
//    return minDifference
//}
//
//var intList = [3, 1, 2, 4, 3]
//print(solution(&intList)) // -> 1.

// #############################################################################################################################################################
// # ------------------------------------------------------------------------ Lesson 4 ------------------------------------------------------------------------#
// # ------------------------------------------------------------------- Counting Elements --------------------------------------------------------------------#
// #############################################################################################################################################################

// ---------------------------------------------------------------------- Frog River One -----------------------------------------------------------------------
//public func solution(_ X : Int, _ A : inout [Int]) -> Int {
//    guard A.count >= X else {
//        return -1
//    }
//
//    var stepsDone = Set<Int>()
//    var time = 0
//
//    for step in A {
//        if step <= X {
//            stepsDone.insert(step)
//
//            if stepsDone.count == X {
//                return time
//            }
//        }
//
//        time += 1
//    }
//
//    return -1
//}
//
//var intList = [1, 3, 1, 4, 2, 3, 5, 4]
//print(solution(5, &intList)) // -> 6.

// ----------------------------------------------------------------------- Max Counters ------------------------------------------------------------------------
//public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
//    var counters = [Int](repeating: 0, count: N)
//    var maxCounterValue = 0
//    var minCounterValue = 0
//
//    for integer in A {
//        if integer >= 1 && integer <= N {
//            var currentCounter = counters[integer - 1]
//
//            if currentCounter < minCounterValue {
//                currentCounter = minCounterValue
//            }
//
//            currentCounter += 1
//            counters[integer - 1] = currentCounter
//
//            if currentCounter > maxCounterValue {
//                maxCounterValue = currentCounter
//            }
//        } else {
//            minCounterValue = maxCounterValue
//        }
//    }
//
//    return counters.map({ $0 > minCounterValue ? $0 : minCounterValue })
//}
//
//var intList = [3, 4, 4, 6, 1, 4, 4]
//print(solution(5, &intList)) // -> [3, 2, 2, 4, 2].

// --------------------------------------------------------------------- Missing Integer -----------------------------------------------------------------------
//public func solution(_ A : inout [Int]) -> Int {
//    let newList = Array(Set(A.filter({ $0 > 0 }))).sorted()
//    var minimumMissingInt = 1
//
//    for integer in newList {
//        if integer == minimumMissingInt {
//            minimumMissingInt += 1
//        }
//    }
//
//    return minimumMissingInt
//}
//
//var intList = [1, 3, 6, 4, 1, 2]
//var intList2 = [1, 2, 3]
//var intList3 =  [-1, -3]
//var intList4 =  [-1, -3, 1, 2]
//var intList5 =  [1, 2, 3, 4, 5]
//var intList6 = Array(-9999...9999)
//var intList7 =  [1, 29, 332, 43, 51]
//var intList8 =  [Int]()
//
//
//print(solution(&intList)) // -> 5.
//print(solution(&intList2)) // -> 4.
//print(solution(&intList3)) // -> 1.
//print(solution(&intList4)) // -> 3.
//print(solution(&intList5)) // -> 6.
//print(solution(&intList6)) // -> 10000.
//print(solution(&intList7)) // -> 2.
//print(solution(&intList8)) // -> 1.

// ----------------------------------------------------------------------- Perm Check --------------------------------------------------------------------------
//public func solution(_ A : inout [Int]) -> Int {
//    let minValue = A.min()
//    let maxValue = A.max()
//    let listOfSet = Array(Set(A))
//    
//    if minValue == 1 && maxValue == A.count && listOfSet.count == A.count {
//        return 1
//    }
//    
//    return 0
//}
//
//var intList = [4, 1, 3, 2]
//var intList2 = [4, 1, 3]
//
//print(solution(&intList)) // -> 1.
//print(solution(&intList2)) // -> 0.
