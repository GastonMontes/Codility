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
}
