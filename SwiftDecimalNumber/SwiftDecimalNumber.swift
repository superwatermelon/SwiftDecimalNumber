// -----------------------------------------------------------------------------
//
// SwiftDecimalNumber/SwiftDecimalNumber.swift
//
// Copyright © 2016 Superwatermelon Limited. All rights reserved.
// Licensed under the MIT License (MIT)
//
// -----------------------------------------------------------------------------

import Foundation

extension NSDecimalNumber: Comparable {}

/**
    Performs value equality comparison between two NSDecimalNumber values.
 
        > let a = NSDecimalNumber(string: "1.5")
        > let b = NSDecimalNumber(string: "1.500")
        > let c = NSDecimalNumber(string: "1.2")
        > a == b
        true
        > a == c
        false
 
    - parameter left: The first NSDecimalNumber value to compare.
    - parameter right: The second NSDecimalNumber value to compare.
 
    - returns: The result as a boolean, true the two were equal, false otherwise.
*/
public func == (left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .orderedSame
}

/**
    Performs less than value equality comparison between two NSDecimalNumber values.
 
    - parameter left: The first NSDecimalNumber value to compare.
    - parameter right: The second NSDecimalNumber value to compare.
 
    - returns: The result as a boolean, true if left is smaller than right, false otherwise.
*/
public func < (left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .orderedAscending
}

/**
    Returns NSDecimalNumber that is the result of adding left NSDecimalNumber
    and right NSDecimalNumber.
 
    - parameter left: The first NSDecimalNumber value to add.
    - parameter right: The second NSDecimalNumber value to add.
 
    - returns: The resulting NSDecimalNumber.
*/
public func + (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.adding(right)
}

/**
    Returns NSDecimalNumber that is the result of subtracting left NSDecimalNumber
    and right NSDecimalNumber.
 
    - parameter left: The first NSDecimalNumber value to subtract.
    - parameter right: The second NSDecimalNumber value to subtract.
 
    - returns: The resulting NSDecimalNumber.
*/
public func - (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.subtracting(right)
}

/**
    Returns NSDecimalNumber that is the result of multiplying left NSDecimalNumber
    and right NSDecimalNumber.
 
    - parameter left: The first NSDecimalNumber value to multiply.
    - parameter right: The second NSDecimalNumber value to multiply.
 
    - returns: The resulting NSDecimalNumber.
 */
public func * (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.multiplying(by: right)
}

/**
    Returns NSDecimalNumber that is the result of dividing numerator NSDecimalNumber
    and denominator NSDecimalNumber.
 
    - parameter numerator: The numerator NSDecimalNumber of the division operation.
    - parameter denominator: The denominator NSDecimalNumber of the division operation.
 
    - returns: The resulting NSDecimalNumber.
 */
public func / (numerator: NSDecimalNumber, denominator: NSDecimalNumber) -> NSDecimalNumber {
    return numerator.dividing(by: denominator)
}

precedencegroup ExponentiativePrecedence {
    associativity: left
    higherThan: MultiplicationPrecedence
}

infix operator ** : ExponentiativePrecedence

/**
    Calculates the result of the passed NSDecimalNumber raised to
    the power of the passed Int exponent. For example:
 
        > (NSDecimalNumber(string: "2.5") ** 2).toString
        "6.25"
 
    - parameter num: The NSDecimalNumber to raise.
    - parameter pow: The Int power by which to raise the NSDecimalNumber.
 
    - returns: The result of the NSDecimalNumber raised to the power.
*/
public func ** (value: NSDecimalNumber, exponent: Int) -> NSDecimalNumber {
    return value.raising(toPower: exponent)
}

/**
    Returns the minimum of two NSDecimalNumber values passed. For example:
 
        > let a = NSDecimalNumber(string: "1.5")
        > let b = NSDecimalNumber(string: "1.2")
        > min(a, b).toString
        "1.2"
 
    - parameter left: The first NSDecimalNumber value to compare.
    - parameter right: The second NSDecimalNumber value to compare.
 
    - returns: The smaller of the two NSDecimalNumber values.
*/
public func min(_ left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left < right ? left : right
}

/**
    Returns the maximum of two NSDecimalNumber values passed. For example:
 
        > let a = NSDecimalNumber(string: "1.5")
        > let b = NSDecimalNumber(string: "1.2")
        > max(a, b).toString
        "1.5"
 
    - parameter left: The first NSDecimalNumber value to compare.
    - parameter right: The second NSDecimalNumber value to compare.
 
    - returns: The larger of the two NSDecimalNumber values.
*/
public func max(_ left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left > right ? left : right
}
