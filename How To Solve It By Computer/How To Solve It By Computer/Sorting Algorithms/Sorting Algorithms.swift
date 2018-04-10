//
//  Sorting Algorithms.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 4/10/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import Foundation

class SortingAlgorithms {
    
    private func merge(leftPile : [Int], rightPile : [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        var orderedPile = [Int]()
        
        while leftIndex < leftPile.count && rightIndex < rightPile.count {
            if leftPile[leftIndex] < rightPile[rightIndex] {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
            } else if leftPile[leftIndex] > rightPile[rightIndex] {
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            } else {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftPile.count {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightPile.count {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        
        return orderedPile
    }
    
    func mergeSort(arr : [Int]) -> [Int] {
        guard arr.count > 1 else { return arr }
        let middleIndex = arr.count / 2
        
        let leftArray = mergeSort(arr: Array(arr[0..<middleIndex]))
        let rightArray = mergeSort(arr: Array(arr[middleIndex..<arr.count]))
        
        return merge(leftPile: leftArray, rightPile: rightArray)
        
    }
}
