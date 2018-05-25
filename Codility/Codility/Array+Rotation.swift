//
//  Array+Rotation.swift
//  Codility
//
//  Created by Gaston Montes on 25/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    public func arrayCyclicRotation(withRotations rotations: Int) -> Array<Int> {
        let arraySize = self.count
        
        guard arraySize > 0 else {
            return self
        }
        
        var finalRotation = rotations
        
        while finalRotation > arraySize {
            finalRotation -= arraySize
        }
        
        guard arraySize != 0, arraySize != finalRotation, finalRotation > 0 else {
            return self
        }
        
        let endOfCyclic = self[0..<arraySize - finalRotation]
        let startOfCyclic = self[arraySize - finalRotation..<self.count]
        
        return Array(startOfCyclic + endOfCyclic)
    }
}
