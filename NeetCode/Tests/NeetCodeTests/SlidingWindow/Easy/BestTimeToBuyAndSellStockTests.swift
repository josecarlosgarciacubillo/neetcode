//
//  BestTimeToBuyAndSellStockTests.swift
//  NeetCode
//
//  Created by José Carlos García on 07/01/25.
//

import Testing
@testable import NeetCode

struct BestTimeToBuyAndSellStockTests {

    @Test func testOne() async throws {
        let sut = BestTimeToBuyAndSellStock()
        #expect(sut.maxProfit([7,1,5,3,6,4]) == 5)
    }

    @Test func testTwo() async throws {
        let sut = BestTimeToBuyAndSellStock()
        #expect(sut.maxProfit([7,6,4,3,1]) == 0)
    }
}
