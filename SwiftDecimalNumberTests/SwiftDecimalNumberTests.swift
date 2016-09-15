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

    func testEqualityWhenEqual() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 10000 as Int)

        XCTAssertTrue(a == b)

    }

    func testEqualityWhenNotEqual() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 5000 as Int)

        XCTAssertFalse(a == b)

    }

    func testInequalityWhenEqual() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 10000 as Int)
        
        XCTAssertFalse(a != b)
        
    }

    func testInequalityWhenNotEqual() {
        
        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 5000 as Int)
        
        XCTAssertTrue(a != b)
    
    }

    func testGreaterThan() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 5000 as Int)

        XCTAssertTrue(a > b)
        XCTAssertFalse(b > a)

    }

    func testLessThan() {

        let a = NSDecimalNumber(string: "4999.99")
        let b = NSDecimalNumber(value: 5000 as Int)

        XCTAssertTrue(a < b)
        XCTAssertFalse(b < a)

    }

    func testGreaterThanOrEqualWhenGreater() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 5000 as Int)

        XCTAssertTrue(a >= b)
        XCTAssertFalse(b >= a)

    }

    func testGreaterThanOrEqualWhenEqual() {

        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 10000 as Int)

        XCTAssertTrue(a >= b)
        XCTAssertTrue(b >= a)

    }
    
    func testLessThanOrEqualWhenGreater() {
        
        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 5000 as Int)
        
        XCTAssertFalse(a <= b)
        XCTAssertTrue(b <= a)
        
    }
    
    func testLessThanOrEqualWhenEqual() {
        
        let a = NSDecimalNumber(string: "10000")
        let b = NSDecimalNumber(value: 10000 as Int)
        
        XCTAssertTrue(a <= b)
        XCTAssertTrue(b <= a)
        
    }

    func testAddition() {

        let a = NSDecimalNumber(value: 5000 as Int)
        let b = NSDecimalNumber(string: "4999.99")
        let c = NSDecimalNumber(string: "9999.99")

        XCTAssertEqual(a + b, c)

    }

    func testSubtraction() {

        let a = NSDecimalNumber(value: 5000 as Int)
        let b = NSDecimalNumber(string: "4999.99")
        let c = NSDecimalNumber(string: "0.01")

        XCTAssertEqual((a as Decimal) - (b as Decimal), c as Decimal)
    }

    func testMultiplication() {

        let a = NSDecimalNumber(string: "0.2")
        let b = NSDecimalNumber(string: "0.05")
        let c = NSDecimalNumber(string: "0.01")


        XCTAssertEqual((a as Decimal) * (b as Decimal), c as Decimal)

    }

    func testDivision() {

        let a = NSDecimalNumber(string: "0.2")
        let b = NSDecimalNumber(string: "0.5")
        let c = NSDecimalNumber(string: "0.4")

        XCTAssertEqual((a as Decimal) / (b as Decimal), c as Decimal)

    }

    func testSquare() {

        let a = NSDecimalNumber(string: "0.2")
        let b = 2
        let c = NSDecimalNumber(string: "0.04")

        XCTAssertEqual(a ** b, c)

    }

    func testMin() {

        let a = NSDecimalNumber(value: 5000 as Int)
        let b = NSDecimalNumber(string: "4999.99")

        XCTAssertEqual(min(a, b), b)

    }

    func testMax() {

        let a = NSDecimalNumber(value: 5000 as Int)
        let b = NSDecimalNumber(string: "4999.99")

        XCTAssertEqual(max(a, b), a)

    }

}
