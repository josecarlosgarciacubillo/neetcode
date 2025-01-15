//
//  ContainsDuplicate.swift
//  NeetCode
//
//  Created by Jose C. Garcia on 17/12/24.
//

import Foundation

final class ContainsDuplicate {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()

        for num in nums {
            if seen.contains(num) {
                return true
            }
            seen.insert(num)
        }

        return false
    }
}
