class Solution {
    fun solution(n: Int): Int {
        var answer = 0
        var addN = n
        
        while (addN != 0) {
            answer += addN % 10
            addN /= 10
        }

        return answer
    }
}