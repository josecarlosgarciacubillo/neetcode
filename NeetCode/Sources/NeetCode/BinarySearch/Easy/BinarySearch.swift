//
//  BinarySearch.swift
//  NeetCode
//
//  Created by José Carlos García on 08/01/25.
//

import Foundation

final class BinarySearch {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
        
        if nums.count == 1 {
            if nums[0] == target {
                return 0
            } else {
                return -1
            }
        }
        
        var l = 0
        var r = nums.count - 1
        var m = r / 2
        
        while l <= r {
            if target == nums[m] {
                return m
            } else if target < nums[m] {
                r = m - 1
                m = (l + r) / 2
            } else if target > nums[m] {
                l = m + 1
                m = (l + r) / 2
            }
        }
        
        return -1
    }
}
