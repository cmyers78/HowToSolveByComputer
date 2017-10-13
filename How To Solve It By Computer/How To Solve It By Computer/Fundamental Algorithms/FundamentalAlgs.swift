//
//  Counting.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 10/13/17.
//  Copyright © 2017 Dragoman Developers. All rights reserved.
//

import Foundation


struct FundamentalAlgs {
    init() { }
    
    /// Description: Given an array of n students examinations marks (in the range 0 to 100) make a count of the numbers of students that passed the examination.
    ///
    /// - Parameters:
    ///   - arrayOfScores: array of test scores (value Int) passed into the function
    ///   - withPassValue: the lowest pass rate acceptable
    /// - Returns: number of passing tests
    func passOrFail(from arrayOfScores : [Int], withPassValue : Int) -> Int {
        var numPassed = 0
        
        for score in arrayOfScores {
            if score > withPassValue {
                numPassed += 1
            }
        }
        return numPassed
    }
}
