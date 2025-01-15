//
//  TwoSumTests.swift
//  NeetCode
//
//  Created by José Carlos García on 04/01/25.
//

import Testing
@testable import NeetCode

struct TwoSumTests {

    @Test func test() async throws {
        let sut = TwoSum()
        #expect(sut.twoSum([2,7,11,15], 9) == [0, 1])
    }
}
