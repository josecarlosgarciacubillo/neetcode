//
//  TwoSum.swift
//  NeetCode
//
//  Created by José Carlos García on 23/12/24.
//

final class TwoSum {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var visited: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            let targetNumber = target - nums[i]
            if let savedNumber = visited[targetNumber] {
                return [savedNumber, i]
            } else {
                visited[nums[i]] = i
            }
        }
        
        return []
    }
}
