/**
Time O(n)
Space O(1)
*/
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var yesterday = Int.max
        var maxProfit = Int.zero
        
        for today in prices {
            let profit = today - yesterday
            maxProfit += max(profit, 0)
            yesterday = today
        }
        
        return maxProfit
    }
}