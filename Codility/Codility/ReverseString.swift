//
//  ReverseString.swift
//  Codility
//
//  Created by Gaston Montes on 08/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

public func canReverseString(_ stringToReverse: String) -> Bool {
    guard String(stringToReverse.reversed()).count > 0 else {
        return false
    }
    
    return true
}

public func reverseString(_ stringToReverse: String) -> String {
    return String(stringToReverse.reversed())
}
