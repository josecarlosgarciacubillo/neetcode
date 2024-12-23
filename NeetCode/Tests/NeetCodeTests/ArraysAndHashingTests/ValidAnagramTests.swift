//
//  ValidAnagramTests.swift
//  NeetCode
//
//  Created by Jose C. Garcia on 17/12/24.
//

import Testing
@testable import NeetCode

struct ValidAnagramTests {

    @Test func testFalse() async throws {
        let sut = ValidAnagram()
        #expect(sut.isAnagram("anagram", "nagaram"))
    }

    @Test func testTrue() async throws {
        let sut = ValidAnagram()
        #expect(sut.isAnagram("rat", "car") == false)
    }
}
