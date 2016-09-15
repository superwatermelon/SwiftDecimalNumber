//
//  SwiftDecimalNumber.swift
//  SwiftDecimalNumber
//
//  Created by Stuart Wakefield on 04/03/2016.
//  Copyright © 2016 Superwatermelon Limited. All rights reserved.
//

import Foundation

extension NSDecimalNumber: Comparable {}

/**
    Performs equality comparison between two NSDecimalNumber values.
 
    @param left The first NSDecimalNumber value to compare.
    @param right The second NSDecimalNumber value to compare.
 
    @return The result as a boolean, true the two were equal, false otherwise.
*/
public func == (left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .orderedSame
}

public func < (left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .orderedAscending
}

public func + (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.adding(right)
}

public func - (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.subtracting(right)
}

public func * (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.multiplying(by: right)
}

public func / (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.dividing(by: right)
}

precedencegroup ExponentiativePrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
}

infix operator ** : ExponentiativePrecedence

public func ** (left: NSDecimalNumber, right: Int) -> NSDecimalNumber {
    return left.raising(toPower: right)
}

/**
    Returns the minimum of two NSDecimalNumber values passed.
 
    @param left The first NSDecimalNumber value to compare.
    @param right The second NSDecimalNumber value to compare.
 
    @return The smaller of the two NSDecimalNumber values.
*/
public func min(_ left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left < right ? left : right
}

/**
    Returns the maximum of two NSDecimalNumber values passed.
 
    @param left The first NSDecimalNumber value to compare.
    @param right The second NSDecimalNumber value to compare.
 
    @return The larger of the two NSDecimalNumber values.
*/
public func max(_ left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left > right ? left : right
}
