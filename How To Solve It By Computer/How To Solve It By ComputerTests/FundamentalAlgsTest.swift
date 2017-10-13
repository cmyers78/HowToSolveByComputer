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
    

    
}
