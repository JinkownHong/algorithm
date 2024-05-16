class Solution {
    fun solution(a: IntArray, b: IntArray): Long {
        var answer: Long = 0L

        for (i in a.indices) {
            answer += (a[i] * b[i]).toLong()
        }
        return answer
    }
}