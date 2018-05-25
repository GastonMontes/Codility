//
//  Int+BinaryGap.swift
//  Codility
//
//  Created by Gaston Montes on 5/15/18.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

extension Int {
    public func binaryGap() -> Int {
        var binaryGap = 0
        var gapCount = -1
        var numberToDivide = self
        
        while numberToDivide > 0 {
            let gap = numberToDivide % 2
            numberToDivide = Int(numberToDivide / 2)
            
            if gap == 0 {
                gapCount = gapCount + 1
            } else {
                if gapCount == -1 {
                    gapCount = 0
                } else if gapCount > binaryGap {
                    binaryGap = gapCount
                }
                
                gapCount = 0
            }
        }
        
        return binaryGap
    }
}
