//
//  ContainsDuplicateTests.swift
//  NeetCode
//
//  Created by Jose C. Garcia on 17/12/24.
//

import Testing
@testable import NeetCode

struct ContainsDuplicateTests {

    @Test func testFalse() async throws {
        let sut = ContainsDuplicate()
        #expect(sut.containsDuplicate([1,2,3,4,5]) == false)
    }

    @Test func testTrue() async throws {
        let sut = ContainsDuplicate()
        #expect(sut.containsDuplicate([1,2,5,4,5]))
    }
}
