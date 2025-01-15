//
//  BinarySearchTests.swift
//  NeetCode
//
//  Created by José Carlos García on 08/01/25.
//

import Testing
@testable import NeetCode

struct BinarySearchTests {

    @Test func testTrue() async throws {
        let sut = BinarySearch()
        #expect(sut.search([-1,0,3,5,9,12], 9) == 4)
    }

    @Test func testFalse() async throws {
        let sut = BinarySearch()
        #expect(sut.search([-1,0,3,5,9,12], 9) == 4)
    }
}
