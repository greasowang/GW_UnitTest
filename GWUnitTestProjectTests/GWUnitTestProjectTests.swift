//
//  GWUnitTestProjectTests.swift
//  GWUnitTestProjectTests
//
//  Created by Greaso Wang on 2017/7/24.
//  Copyright © 2017年 Greaso Wang. All rights reserved.
//

import XCTest
@testable import GWUnitTestProject

class GWUnitTestProjectTests: XCTestCase {
    let vc = ViewController()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssert(vc.calculator(input: 10) == 1000)
        XCTAssertFalse(vc.calculator(input: 10) == 100)
        XCTAssert(vc.calculator(input: -5) == -500)
    }
    
    func testPerformanceExample() {
        self.measure {
            self.vc.measureTest(checkResult: { (result, errorString) in
                XCTAssert(result == "result")
                XCTAssert(errorString == "errorString")
            })
        }
    }
    
    func testApiCallbackExample(){
        let expectationExmple = expectation(description: "expectationExmple")
        
        self.vc.callBackTest(backResult: { (backResult, errorString) in
            XCTAssert(backResult == "result")
            XCTAssert(errorString == "errorString")
            expectationExmple.fulfill()
        })
        waitForExpectations(timeout: 3){ error in
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
            }
        }
    }
}
