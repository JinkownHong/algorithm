class Solution {
    fun solution(n: Long): Long {
        return n.toString().map{
            it.toString().toInt()
        }.sortedDescending().joinToString(separator = "").toLong()
    }
}