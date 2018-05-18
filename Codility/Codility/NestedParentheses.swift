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
