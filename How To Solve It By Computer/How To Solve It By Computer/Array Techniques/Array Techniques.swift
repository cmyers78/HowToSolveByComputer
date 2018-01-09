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
}
