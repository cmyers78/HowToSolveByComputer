//
//  FactoringMethods.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 10/25/17.
//  Copyright © 2017 Dragoman Developers. All rights reserved.
//

import Foundation

struct FactoringMethods {
    
    /// Finds the square root of a number using the Babylonioan or Hero's method
    /// of approximating a square root
    ///
    ///  [Babylonian or Hero's Method For Square Root Approximation - Wikipedia](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    /// - Parameter number: Number to be computed
    /// - Returns: square root approximation of input to four decimal places
    func findSquareRoot(of number : Double) -> Double {
        let marginForError = 0.0001 // approximation used to terminate loop
        var firstGuess = number / 2.0 // first initial guess
        var secondGuess = 1.0
        
        while abs(firstGuess - secondGuess) > marginForError {
            secondGuess = firstGuess
            firstGuess = (firstGuess + (number / firstGuess)) / 2.0
        }
        
        return round(firstGuess * 10000) / 10000
    }
    
    /// Finds the smallest possible divisor for a number greater than 1
    ///
    /// - Parameter num: UInt value to be computed for smallest divisor
    /// - Returns: returns smallest divisor, or 1 if prime
    func smallestDivisor(for num : UInt) -> UInt {
        assert(num > 0, "This number is not greater than 0")
        var smallestValue = UInt(1)
        if num % 2 == 0 {
            smallestValue = 2
        } else {
            let upperBound = UInt(findSquareRoot(of: Double(num)).rounded(.down))
            for i in stride(from: 3, through: upperBound, by: 2) {
                if num % i == 0 {
                    smallestValue = UInt(i)
                    break
                } 
            }
        }
        return smallestValue
    }
    
    func greatestCommonDivisor(forLargerNum largerNum : Int, smallerNum : Int) -> Int {
        var largerValue = largerNum
        var smallerValue = smallerNum
        
        while smallerValue > 0 {
            let temp = largerValue % smallerValue
            largerValue = smallerValue
            smallerValue = temp
        }
        print("GCD is: \(largerValue)")
        return largerValue
    }
}
