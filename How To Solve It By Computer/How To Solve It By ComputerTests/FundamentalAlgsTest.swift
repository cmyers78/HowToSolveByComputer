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
        
        let aaaaa = fundAlgs.passOrFail(from: testScores, withPassValue: 50)
        
        XCTAssertEqual(aaaaa, 5)
    }
    
    func testSummation() {
        let arrayOfInts = [1, 2, 3, 4, 5]
        let bbbbb = fundAlgs.summation(from: arrayOfInts)
        let ccccc = fundAlgs.summation(from: [10, 5, 20, 100, 15, 25])
        let ddddd = fundAlgs.average(of: arrayOfInts)
        let eeeee = fundAlgs.squareOfSums(from: arrayOfInts)
        
        XCTAssertEqual(bbbbb, 15)
        XCTAssertEqual(ccccc, 175)
        XCTAssertEqual(ddddd, 3)
        XCTAssertEqual(eeeee, 55)
        
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
    
    func testFibonacci() {
        let answer1 = fundAlgs.fibonacciIterative(for: 0)
        XCTAssertEqual(answer1, 0)
        
        let answer2 = fundAlgs.fibonacciIterative(for: 1)
        XCTAssertEqual(answer2, 1)
        
        let answer3 = fundAlgs.fibonacciIterative(for: 2)
        XCTAssertEqual(answer3, 1)
        
        let answer4 = fundAlgs.fibonacciIterative(for: 3)
        XCTAssertEqual(answer4, 2)
        
        let answer5 = fundAlgs.fibonacciIterative(for: 7)
        XCTAssertEqual(answer5, 13)
    }
    
    func testReversedNumber() {
        let answer1 = fundAlgs.reverseDigits(from: 54321)
        XCTAssertEqual(answer1, 12345)
        
    }
    
    func testBaseConversion() {
        let answer1 = fundAlgs.baseConversion(for: 93, toBase: 8)
        XCTAssertEqual(answer1, 135)
    }
}
