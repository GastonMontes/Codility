//
//  MinPositiveIntegerInArray.swift
//  Codility
//
//  Created by Gaston Montes on 08/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

public func minPositiveIntegerNotIncludedIn(integersList: [Int]) -> Int {
    let positiveInt = integersList.filter({ $0 > 0})
    
    guard positiveInt.count > 0 else {
        return 1
    }
    
    for index in 1...1000000 {
        guard positiveInt.contains(index) else {
            return index
        }
    }
    
    return 1
}

public func minPositiveIntegerNotIncludedIn2(integersList: [Int]) -> Int {
    for index in 1...1000000 {
        if integersList.contains(index) == false {
            return index
        }
    }
    
    return 1
}

public func minPositiveIntegerNotIncludedIn3(integersList: [Int]) -> Int {
    let positiveInt = integersList.filter({ $0 > 0})
    let minInt = positiveInt.min() ?? 1
    
    guard minInt == 1 else {
        return minInt - 1
    }
    
    let maxInt = positiveInt.max() ?? 1000000
    
    for index in minInt...maxInt {
        if positiveInt.contains(index) == false {
            return index
        }
    }
    
    return maxInt + 1
}

public func minPositiveIntegerNotIncludedIn4(integersList: [Int]) -> Int {
    let positiveInt = integersList.filter({ $0 > 0})
    let minInt = positiveInt.min() ?? 1
    
    guard minInt == 1 else {
        return minInt - 1
    }
    
    let maxInt = positiveInt.max() ?? 1000000
    
    for index in minInt...maxInt {
        if positiveInt.contains(index) == false {
            return index
        }
    }
    
    return maxInt + 1
}

public func minPositiveIntegerNotIncludedIn5(integersList A: inout [Int]) -> Int {
    A = Set(A.filter({ $0 > 0})).sorted()
    let maxIndex = A.endIndex
    
    if maxIndex == 0 {
        return 1
    }
    
    if A[maxIndex - 1] == maxIndex {
        return maxIndex + 1
    }
    
    guard A[0] <= 1 else {
        return 1
    }
    
    for index in 1...maxIndex {
        if A[index - 1] != index {
            return index
        }
    }
    
    return maxIndex + 1
}

public func minPositiveIntegerNotIncludedIn6(integersList A: inout [Int]) -> Int {
    A = Set(A.filter({ $0 > 0})).sorted()
    let maxIndex = A.endIndex
    
    if maxIndex == 0 {
        return 1
    }
    
    if A[maxIndex - 1] == maxIndex {
        return maxIndex + 1
    }
    
    guard A[0] <= 1 else {
        return 1
    }
    
    var positives = Array(0...1000000)
    
    for integer in A {
        if integer > 0 {
            positives[integer] = -integer
        }
    }
    
    for integer in positives {
        if integer > 0 {
            return integer
        }
    }
    
    return 1000001
}

public func minPositiveIntegerNotIncludedIn7(integersList: [Int]) -> Int {
    var smallestMissingInteger = 1
    
    if (integersList.count == 0) {
        return smallestMissingInteger;
    }
    
    var integersSet = Set<Int>()
    
    for integer in integersList {
        if integer > 0 {
            integersSet.insert(integer)
        }
    }
    
    while (integersSet.contains(smallestMissingInteger)) {
        smallestMissingInteger += 1;
    }
    
    return smallestMissingInteger
}

