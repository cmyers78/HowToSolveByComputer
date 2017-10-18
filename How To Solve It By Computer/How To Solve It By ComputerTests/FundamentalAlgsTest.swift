//
//  FundamentalAlgsTest.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 10/13/17.
//  Copyright © 2017 Dragoman Developers. All rights reserved.
//

import XCTest
@testable import How_To_Solve_It_By_Computer

class FundamentalAlgsTest: XCTestCase {
    
    var fundAlgs : FundamentalAlgs!
    
    override func setUp() {
        super.setUp()
        
        fundAlgs = FundamentalAlgs()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        fundAlgs = nil
        super.tearDown()
        
    }
    
    func testCountingFunction() {
        let testScores = [98, 56, 84, 31, 12, 90, 75]
        
        let a = fundAlgs.passOrFail(from: testScores, withPassValue: 50)
        
        XCTAssertEqual(a, 5)
    }
    
    func testSummation() {
        let arrayOfInts = [1, 2, 3, 4, 5]
        let b = fundAlgs.summation(from: arrayOfInts)
        let c = fundAlgs.summation(from: [10, 5, 20, 100, 15, 25])
        let d = fundAlgs.average(of: arrayOfInts)
        let e = fundAlgs.squareOfSums(from: arrayOfInts)
        
        XCTAssertEqual(b, 15)
        XCTAssertEqual(c, 175)
        XCTAssertEqual(d, 3)
        XCTAssertEqual(e, 55)
        
    }
    
    func testHarmonicMean() {
        let arrayOfInts = [1.0, 4.0, 4.0]
        let answer = fundAlgs.harmonicMean(from: arrayOfInts)
        XCTAssertEqual(answer, 2.0)
    }
    
    func testAlternatingSign() {
        let answer = fundAlgs.alternatingSignSeries(for: 19)
        XCTAssertEqual(answer, 19)
    }
    
    func testNonMultiplyBinary() {
        let answer = fundAlgs.generateNonMultiplicativeBinaryProgression(for: 4)
        XCTAssertEqual(answer, 8)
    }
    
    func testFactorial() {
        let answer1 = fundAlgs.factorial(for: 1)
        XCTAssertEqual(answer1, 1)
        let answer2 = fundAlgs.factorial(for: 2)
        XCTAssertEqual(answer2, 2)
        let answer3 = fundAlgs.factorial(for: 5)
        XCTAssertEqual(answer3, 120)
    }
}
