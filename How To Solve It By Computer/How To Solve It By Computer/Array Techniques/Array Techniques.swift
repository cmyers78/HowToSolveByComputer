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
}
