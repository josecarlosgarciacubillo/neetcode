//
//  ValidPalindrome.swift
//  NeetCode
//
//  Created by José Carlos García on 04/01/25.
//

import Foundation

final class ValidPalindrome {
    
    func isPalindrome(_ s: String) -> Bool {
        let lowercasedString = s.lowercased()
        let cleanString = lowercasedString.replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)
        
        guard !cleanString.isEmpty else { return true }
        
        var leftPointer = cleanString.startIndex
        var rightPointer = cleanString.index(before: cleanString.endIndex)
        
        while leftPointer < rightPointer {
            if cleanString[leftPointer] != cleanString[rightPointer] {
                return false
            }
            leftPointer = cleanString.index(after: leftPointer)
            rightPointer = cleanString.index(before: rightPointer)
        }
        
        return true
    }
}
