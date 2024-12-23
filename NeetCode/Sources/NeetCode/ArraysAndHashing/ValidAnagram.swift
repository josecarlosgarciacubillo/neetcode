//
//  ValidAnagram.swift
//  NeetCode
//
//  Created by Jose C. Garcia on 17/12/24.
//

import Foundation

final class ValidAnagram {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var countS: [Character: Int] = [:]
        var countT: [Character: Int] = [:]
        
        for char in s {
            countS[char, default: 0] += 1
        }
        
        for char in t {
            countT[char, default: 0] += 1
        }
        
        return countS == countT
    }
}
