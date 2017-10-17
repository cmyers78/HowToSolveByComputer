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
    
    // MARK: - Counting Challenge
    
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
    
    // MARK: - Summation Challenge
    
    /// Description: Given an array of n numbers, design an algorithm that adds these numbers and returns the resultant sum. Assume n >= 0
    ///
    /// - Parameter intArray: array of integers greater than 0
    /// - Returns: sum of the array
    func summation(from intArray : [Int]) -> Int {
        var finalSum = 0
        
        for num in intArray {
            finalSum += num
        }
        
        return finalSum
    }
    
    //MARK: - Supplementary Summation Coding Challenges
    func average(of array : [Int]) -> Int {
        let arraySize = array.count
        return summation(from: array) / arraySize
    }
    
    func squareOfSums(from intArray : [Int]) -> Int {
        var finalSum = 0
        
        for num in intArray {
            finalSum += (num * num)
        }
        return finalSum
    }
    
    func harmonicMean(from intArray : [Double]) -> Double {
        var meanValue = 0.0
        for num in intArray {
            meanValue += 1 / num
        }
        return Double(intArray.count) / meanValue
    }
    
    func alternatingSignSeries(for nTerms : Int) -> Int {
        if nTerms == 1 { return 1 }
        var value = 1
        var sum = 1
        for i in 1...(nTerms - 1) {
            if i % 2 == 1 {
                value += (i * -4)
            } else {
                value += (i * 4)
            }
            sum += value
        }
        return sum
    }
}
