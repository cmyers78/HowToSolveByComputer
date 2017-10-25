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
    // MARK: - Factorial Challenge
    
    /// Description: Given a number, compute the factorial of that number. (i.e. : 5! = 5 * 4 * 3 * 2 * 1)
    ///
    /// - Parameter number: integer value >= 0
    /// - Returns: integer value for the factorial. (i.e. : 0! && 1! return 1, 5! returns 120)
    func factorial(for number : Int) -> Int {
        var nFactorial = 1
        if number <= 1 {
            return 1
        } else if number > 1 {
            for i in 2...number {
                nFactorial *= i
            }
        } else {
            print("Enter non-negative numbers only")
            return -1
        }
        return nFactorial
    }
    
    func fibonacciIterative(for number : Int) -> Int {
        var fibMinusOne = 1
        var fibMinusTwo = 0
        
        if number <= 1 {
            return number
        } else {
            for _ in 2...number {
                let holdingNumber = fibMinusOne
                fibMinusOne = fibMinusOne + fibMinusTwo
                fibMinusTwo = holdingNumber
            }
        }
        
        return fibMinusOne
    }
    
    func reverseDigits(from number : Int) -> Int {
        var reversedNum = 0
        var mutatedNumber = number
        while mutatedNumber > 0 {
            reversedNum = reversedNum * 10 + (mutatedNumber % 10)
            mutatedNumber = mutatedNumber / 10
        }
        return reversedNum
    }
    
    /// Base Conversion: convert decimal numbers to any numeric base
    ///
    /// - Parameters:
    ///   - num: decimal number to be converted
    ///   - toBase: Base system to convert to (i.e octal, binary, ternary)
    /// - Returns: Integer value in base assigned
    func baseConversion(for num : Int, toBase : Int) -> Int {
        var quotient = num
        var conversion = 0
        var quotientArray = [Int]()
        
        while quotient > 0 {
            let remainder = quotient % toBase
            quotientArray.append(remainder)
            quotient = quotient / toBase
        }
        
        for i in quotientArray.reversed() {
            conversion = (conversion * 10) + i
        }
        
        return conversion
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
    
    func generateNonMultiplicativeBinaryProgression(for nTerms : Int) -> Int {
        var value = 1
        if nTerms == 1 { return 1 }
        else {
            for _ in 1...(nTerms - 1) {
                let tempValue = value + value
                value = tempValue
            }
        }
        return value
    }
    
    
    
    
    
    
    
}
