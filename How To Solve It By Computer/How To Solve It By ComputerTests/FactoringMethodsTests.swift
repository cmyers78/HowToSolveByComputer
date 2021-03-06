//
//  FactoringMethodsTests.swift
//  How To Solve It By ComputerTests
//
//  Created by Christopher Myers on 10/25/17.
//  Copyright © 2017 Dragoman Developers. All rights reserved.
//

import XCTest
@testable import How_To_Solve_It_By_Computer

class FactoringMethodsTests: XCTestCase {
    var factoringMethods : FactoringMethods!
    
    override func setUp() {
        super.setUp()
        factoringMethods = FactoringMethods()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        factoringMethods = nil
        super.tearDown()
    }
    
    func testSquareRoot() {
        let answer1 = factoringMethods.findSquareRoot(of: 81)
        let expectedAnswer = Double(9)
        XCTAssertEqual(answer1, expectedAnswer)
    }
    
    func testSmallestDivisor() {
        let answer1 = factoringMethods.smallestDivisor(for: 48)
        XCTAssertEqual(answer1, 2)
        let answer2 = factoringMethods.smallestDivisor(for: 49)
        XCTAssertEqual(answer2, 7)
        let answer3 = factoringMethods.smallestDivisor(for: 35)
        XCTAssertEqual(answer3, 5)
        let answer4 = factoringMethods.smallestDivisor(for: 5)
        XCTAssertEqual(answer4, 1)
    }
    
    func testGCD() {
        let answer1 = factoringMethods.greatestCommonDivisor(forLargerNum: 30, smallerNum: 18)
        let answer2 = factoringMethods.greatestCommonDivisor(forLargerNum: 100, smallerNum: 80)
        XCTAssertEqual(answer1, 6)
        XCTAssertEqual(answer2, 20)
    }
    
    func testPrimeNumberGenerator() {
        let numbers = factoringMethods.primeNumberGenerator(forNumbersRangingTo: 100)
        XCTAssertEqual(numbers.count, 25)
        let answer2 = numbers.contains(41)
        XCTAssert(answer2)
    }
    
    func testLargePowerNumber() {
        let number = factoringMethods.largeValueExponents(forBase: 5, power: 5)
        XCTAssertEqual(number, 3125)
        let largeNumber = factoringMethods.largeValueExponents(forBase: 2, power: 20)
        XCTAssertEqual(largeNumber, 1048576)
    }
    
}
