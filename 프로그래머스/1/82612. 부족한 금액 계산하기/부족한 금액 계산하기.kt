class Solution {
    fun solution(price: Int, money: Int, count: Int): Long {
        var temple: Long = 0L

        for (i in 1..count) {
            var sumPrice = price * i
            temple += sumPrice
        }

        if (temple > money) {
            return temple - money
        } else {
            return 0L
        }
    }
}