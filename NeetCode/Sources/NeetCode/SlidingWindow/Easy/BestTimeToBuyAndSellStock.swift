//
//  BestTimeToBuyAndSellStock.swift
//  NeetCode
//
//  Created by José Carlos García on 07/01/25.
//

import Foundation

final class BestTimeToBuyAndSellStock {
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var maxProfit = 0
        var left = 0
        var right = 1
        
        while right < prices.count {
            if prices[left] < prices[right] {
                let profit  = prices[right] - prices[left]
                maxProfit = max(profit, maxProfit)
            } else {
                left = right
            }
            right += 1
        }
        
        return maxProfit
    }
}
