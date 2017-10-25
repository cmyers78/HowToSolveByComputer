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
    
    
}