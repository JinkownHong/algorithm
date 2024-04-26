class Solution {
    fun solution(n: Long): IntArray {
        val answer = IntArray(n.toString().length)
        var addN = n
        var i = 0

        while(addN != 0L) {
            answer[i] = (addN % 10).toInt()
            addN /= 10
            i += 1
        }
        return answer
    }
}