//
//  ArrayTechTests.swift
//  How To Solve It By ComputerTests
//
//  Created by Christopher Myers on 1/9/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import XCTest
@testable import How_To_Solve_It_By_Computer

class ArrayTechTests: XCTestCase {
    var arrayTechniques : ArrayTechniques!
    
    
    override func setUp() {
        super.setUp()
        arrayTechniques = ArrayTechniques()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        arrayTechniques = nil
        
    }
    
    func testReverseArray() {
        let answer1 = arrayTechniques.reverseOrder(forArray: [4, 5, 6, 7, 8])
        let expectedAnswer = [8, 7, 6, 5, 4]
        XCTAssertEqual(answer1, expectedAnswer)
        
    }
    
    func testHistoArray() {
        let answer1 = arrayTechniques.studentScoreHistogramming(from: [0,0,0,2,5,6,87,99,99,99,100,23,0, 1, 1, 1, 2, 45, 45, 53])
        let expectedAnswer = 3
        XCTAssertEqual(answer1[99], expectedAnswer)
        XCTAssertEqual(answer1[0], 4)
        XCTAssertEqual(answer1[1], 3)
        XCTAssertEqual(answer1[88], 0)
        
    }
    
    func testMaxValueArray() {
        let answer1 = arrayTechniques.findMaxNumber(inArray: [8, 9, 2, 4, 19, 22, 17, 8, 13, 12, 24, 5, 1, 0, 8])
        let expectedMax = 24
        XCTAssertEqual(answer1, expectedMax)
    }
    
    func testRemoveDuplicates() {
        let array = arrayTechniques.removeDuplicates(fromArray: [1, 2, 2, 2, 3, 4, 5, 5, 5, 6, 7, 7, 8, 8, 9])
        let expectedCount = 9
        XCTAssertEqual(array.count, expectedCount)
    }
    
    func testPartitionArray() {
        let arr = [6,28, 26, 25, 27, 29, 21, 33, 9, 7, 11, 16, 12, 24, 29, 6, 10, 11, 22, 8, 28, 2, 6, 5, 43, 21, 32, 8, 9, 16, 13]
        let resultArray = arrayTechniques.partitionArray(forKValue: 17, withArray: arr)
        let aboveValueCount = resultArray.filter { $0 > 17}.count
        print(aboveValueCount)
        XCTAssertEqual(aboveValueCount, 14)
        
    }
}
