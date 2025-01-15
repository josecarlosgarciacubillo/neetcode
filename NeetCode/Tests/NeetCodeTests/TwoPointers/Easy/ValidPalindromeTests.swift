//
//  ValidPalindromeTests.swift
//  NeetCode
//
//  Created by José Carlos García on 04/01/25.
//

import Testing
@testable import NeetCode

struct ValidPalindromeTests {

    @Test func testFalse() async throws {
        let sut = ValidPalindrome()
        #expect(sut.isPalindrome("race a car") == false)
    }

    @Test func testTrue() async throws {
        let sut = ValidPalindrome()
        #expect(sut.isPalindrome("A man, a plan, a canal: Panama"))
    }
}
