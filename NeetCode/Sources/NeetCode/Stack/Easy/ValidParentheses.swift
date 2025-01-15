//
//  ValidParentheses.swift
//  NeetCode
//
//  Created by José Carlos García on 07/01/25.
//

import Foundation

final class ValidParentheses {
    
    func isValid(_ s: String) -> Bool {
        let brackets: [Character: Character] = [")":"(","}":"{","]":"["]
        var stack = [Character]()

        for char in s {
            if let currentChar = brackets[char] {
                if stack.last == currentChar {
                    stack.removeLast()
                } else {
                    return false
                }
            } else {
                stack.append(char)
            }
        }

        return stack.isEmpty
    }
}
