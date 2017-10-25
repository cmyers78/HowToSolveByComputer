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
    ///  [Babylonian or Hero's Method For Square Root Approximation - Wikipedia](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method "Hero's Method")
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
}
