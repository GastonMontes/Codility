//
//  Array+Elements.swift
//  Codility
//
//  Created by Gaston Montes on 28/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    public func arrayMissingElement() -> Int {
        let sum = self.reduce(0, +)
        let nNumber = self.count + 1
        
        return (nNumber * (nNumber + 1)) / 2 - sum
    }
    
    public func arrayMinDifferenceOfSplit() -> Int {
        if self.count == 2 {
            return abs(self[0] - self[1])
        }
        
        var sumLeft = self.first!
        var sumRight = self.reduce(0, +) - sumLeft
        var difference = abs(sumLeft - sumRight)
        
        for index in 1...self.count - 2 {
            let currentValue = self[index]
            sumLeft += currentValue
            sumRight -= currentValue
            
            if difference > abs(sumLeft - sumRight) {
                difference = abs(sumLeft - sumRight)
            }
        }
        
        return difference
    }
}
