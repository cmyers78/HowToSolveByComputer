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
}
