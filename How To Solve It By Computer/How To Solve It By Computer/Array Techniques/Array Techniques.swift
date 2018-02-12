//
//  Array Techniques.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 1/9/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import Foundation

struct ArrayTechniques {
    
    // make this type generic later...
    func reverseOrder(forArray arr : [Int]) -> [Int] {
        var reversedArr = Array(repeating: 0, count: arr.count)
        let sizeOfArray = arr.count
        let numberOfExchanges = sizeOfArray / 2
        
        for i in 0...(numberOfExchanges) {
            let temp = arr[i]
            reversedArr[i] = arr[(sizeOfArray - 1) - i]
            reversedArr[(sizeOfArray - 1) - i] = temp
        }
        
        return reversedArr
    }
    
    func studentScoreHistogramming(from marks : [Int]) -> [Int] {
        var histoArray = Array(repeating: 0, count: 101)
        
        for mark in marks {
            histoArray[mark] += 1
        }
        
        return histoArray
    }
    
    func findMaxNumber(inArray arr : [Int]) -> Int {
        guard var currentMax = arr.first else { return 0 }
        
        for num in arr {
            currentMax = max(num, currentMax)
        }
        
        return currentMax
    }
    
    func removeDuplicates(fromArray arr : [Int]) -> [Int] {
        var parsedArray = [Int]()
        
        for num in arr {
            if parsedArray.contains(num) {
                print("items already exists")
            } else {
                parsedArray.append(num)
            }
        }
        
        return parsedArray
    }
    
    func partitionArray(forKValue k : Int, withArray arr : [Int]) -> [Int] {
        var partitionedArray = arr
        var startIndex = 0
        var endIndex = partitionedArray.count - 1
        
        while startIndex < endIndex {
            if startIndex <= k {
                startIndex += 1
            } else if endIndex > k {
                endIndex -= 1
            } else {
                partitionedArray.swapAt(startIndex, endIndex)
            }
        }
        return partitionedArray
    }
    
    /// Finding the kth smallest element in an unordered array using paritioning around an unknown value, but known index in an array.  After the inner while loops complete, the vlaues of the upper and lower bounds of the entire array are changed to reflect whether the index value was found in the upper or lower partition. This runs until the while loop has pseudo-sorted the array around the index value. Pseudo-sorted because the array is definitely not in sorted order, but all values below the final value of k are to the left of it in the array, and all values greater are to the right of it in the array, just not in ascending order. (e.g. - 3rd smallest element is pivot so array could look like: [2, 1, 8, 12, 10, 9] where 8 is 3rd smallest element.
    ///
    /// - Parameters:
    ///   - arr: unordered array (Integers for now)
    ///   - k: the index of element you want to find (e.g. - 4th smallest element in the array)
    /// - Returns: returns the array paritioned at that value of k and the value at that partition)
    func kSelect(from arr : [Int], withKValue k : Int) -> (partitionedArray: [Int], kThSmallestelement : Int) {
        var a = arr
        var i = 0 , j = a.count - 1
        var lower = 0, upper = a.count - 1
        let kValue = k - 1
        var currentGuess = a[kValue], temp = Int()
        
        // while the lower bound is greater than the upperbound
        while lower < upper {
            // set upper limit parititon values
            i = lower // upper limit on lower partition
            j = upper // lower limit on upper partition
            // current partitioning value
            currentGuess = a[kValue]
            
            while (i <= kValue) && (j >= kValue) {
                // extend the left partition
                while a[i] < currentGuess {
                    i += 1
                }
                // extend the right partition
                while a[j] > currentGuess {
                    j -= 1
                }
                // swap (Note: can use Swift's swapAt method too...just wanted to be as explicit as possible)
                temp = a[i]
                a[i] = a[j]
                a[j] = temp
                
                // extend and reduce i and j
                i += 1
                j -= 1
            }
            
            // if kth smallest element in left partition, update upper limit u of left partition
            if i > kValue {
                upper = j
            }
            // if kth smallest element in right partition, update lower limit l of right partition
            if j < kValue {
                lower = i
            }
            
        }
        
        // return elements and value of the kTh element
        return (a, a[kValue])
    }
    
    
}
