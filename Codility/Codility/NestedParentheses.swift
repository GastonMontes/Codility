//
//  NestedParentheses.swift
//  Codility
//
//  Created by Gaston Montes on 08/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

public func areParenthesesCorrectlyNested(_ string: String) -> Bool {
    let onlyParenthesisString = string.filter({ $0 == ")" || $0 == "("})
    
    guard onlyParenthesisString.count % 2 == 0 else {
        return false
    }
    
    var parenthesesCount = 0
    
    for character in onlyParenthesisString {
        if character == "(" { parenthesesCount += 1 }
        else if character == ")" { parenthesesCount -= 1 }
        
        if parenthesesCount < 0 {
            return false
        }
    }
    
    return (parenthesesCount == 0)
}

public func areBraketsBalanced(inputArray: [String]) -> [Bool] {
    var balanced = [Bool]()
    
    for braketsString in inputArray {
        var newString = braketsString
        var stringBalanced = true
        
        if newString.count % 2 != 0 {
            balanced.append(false)
            break
        }
        
        while newString.count > 0 {
            let firstCharacter = newString.first!
            let lastCharacter = newString.last!
            
            if firstCharacter == "}" || firstCharacter == "]" || firstCharacter == ")" {
                stringBalanced = false
                break
            } else if firstCharacter == "{" && lastCharacter != "}" ||
                firstCharacter == "[" && lastCharacter != "]" ||
                firstCharacter == "(" && lastCharacter != ")" {
                stringBalanced = false
                break
            }
            
            newString.removeFirst()
            newString.removeLast()
        }
        
        balanced.append(stringBalanced)
    }
    
    return balanced
}
