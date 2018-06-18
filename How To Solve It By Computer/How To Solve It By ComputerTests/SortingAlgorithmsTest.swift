//
//  SortingAlgorithmsTest.swift
//  How To Solve It By ComputerTests
//
//  Created by Christopher Myers on 4/10/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import XCTest
@testable import How_To_Solve_It_By_Computer

class SortingAlgorithmsTest: XCTestCase {
    var sortingAlgs : SortingAlgorithms!
    
    override func setUp() {
        super.setUp()
        sortingAlgs = SortingAlgorithms()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMergeSort() {
        let answer1 = sortingAlgs.mergeSort(arr: [2, 9, 4, 6, 1, 8, 5, 2])
        let expectedAnswer = [1, 2, 2, 4, 5, 6, 8, 9]
        XCTAssertEqual(answer1, expectedAnswer)
    }
}
