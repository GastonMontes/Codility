//
//  Array+Odd.swift
//  Codility
//
//  Created by Gaston Montes on 25/05/2018.
//  Copyright © 2018 Gaston Montes. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    // A non-empty array A consisting of N integers is given.
    // The array contains an odd number of elements,
    // and each element of the array can be paired with another element
    // that has the same value, except for one element that is left unpaired.
    public func arrayUnpairedElement() -> Int {
        var duplicatedValues = [Int: Bool]()

        for integer in self {
            let currentValue = duplicatedValues[integer]

            if currentValue != nil {
                duplicatedValues[integer] = !currentValue!
            } else {
                duplicatedValues[integer] = false
            }
        }

        for (integer, boolean) in duplicatedValues {
            if boolean == false {
                return integer
            }
        }

        return -1
    }
}
