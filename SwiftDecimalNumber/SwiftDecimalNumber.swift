//
//  SwiftDecimalNumber.swift
//  SwiftDecimalNumber
//
//  Created by Stuart Wakefield on 04/03/2016.
//  Copyright © 2016 Superwatermelon Limited. All rights reserved.
//

import Foundation

extension NSDecimalNumber: Comparable {}

public func ==(left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .OrderedSame
}

public func <(left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
    return left.compare(right) == .OrderedAscending
}

public func +(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByAdding(right)
}

public func -(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberBySubtracting(right)
}

public func *(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByMultiplyingBy(right)
}

public func /(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByDividingBy(right)
}

public func min(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left < right ? left : right
}

public func max(left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left > right ? left : right
}