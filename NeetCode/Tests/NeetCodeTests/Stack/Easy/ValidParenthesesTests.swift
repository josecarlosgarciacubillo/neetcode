//
//  ValidParenthesesTests.swift
//  NeetCode
//
//  Created by José Carlos García on 07/01/25.
//

import Testing
@testable import NeetCode

struct ValidParenthesesTests {

    @Test func testFalse() async throws {
        let sut = ValidParentheses()
        #expect(sut.isValid("(]") == false)
    }

    @Test func testTrue() async throws {
        let sut = ValidParentheses()
        #expect(sut.isValid("()[]{}"))
    }
}
