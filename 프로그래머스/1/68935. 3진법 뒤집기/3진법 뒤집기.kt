class Solution {
    fun solution(n: Int): Int {
        var answer: String = ""
        var depo: Int = n

        while (depo > 0) {
            answer += depo % 3
            depo /= 3
        }
        return answer.toInt(3)
    }
}