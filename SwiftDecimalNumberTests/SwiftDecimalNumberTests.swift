//
//  SwiftDecimalNumberTests.swift
//  SwiftDecimalNumberTests
//
//  Created by Stuart Wakefield on 04/03/2016.
//  Copyright © 2016 Superwatermelon Limited. All rights reserved.
//

import XCTest
@testable import SwiftDecimalNumber

class SwiftDecimalNumberTests: XCTestCase {
    
    func testEquality() {
        
        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(integer: 10000)
        
        XCTAssertTrue(a == b)
        
    }
    
    func testGreaterThan() {
        
        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(integer: 5000)
        
        XCTAssertTrue(a > b)
        
    }
    
    func testLessThan() {
        
        let a = NSDecimalNumber(string: "4999.99")
        let b = NSDecimalNumber(integer: 5000)
        
        XCTAssertTrue(a < b)
        
    }
    
    func testAddition() {
        
        let a = NSDecimalNumber(integer: 5000)
        let b = NSDecimalNumber(string: "4999.99")
        let c = NSDecimalNumber(string: "9999.99")
        
        XCTAssertEqual(a + b, c)
        
    }
    
    func testSubtraction() {
        
        let a = NSDecimalNumber(integer: 5000)
        let b = NSDecimalNumber(string: "4999.99")
        let c = NSDecimalNumber(string: "0.01")
        
        XCTAssertEqual(a - b, c)
    }
    
    func testMultiplication() {
        
        let a = NSDecimalNumber(string: "0.2")
        let b = NSDecimalNumber(string: "0.05")
        let c = NSDecimalNumber(string: "0.01")
        
        
        XCTAssertEqual(a * b, c)
        
    }
    
    func testDivision() {
        
        let a = NSDecimalNumber(string: "0.2")
        let b = NSDecimalNumber(string: "0.5")
        let c = NSDecimalNumber(string: "0.4")
        
        XCTAssertEqual(a / b, c)
        
    }
    
    func testMin() {
        
        let a = NSDecimalNumber(integer: 5000)
        let b = NSDecimalNumber(string: "4999.99")
        
        XCTAssertEqual(min(a, b), b)
        
    }
    
    func testMax() {
        
        let a = NSDecimalNumber(integer: 5000)
        let b = NSDecimalNumber(string: "4999.99")
        
        XCTAssertEqual(max(a, b), a)
        
    }
    
}
