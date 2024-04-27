import kotlin.math.sqrt

class Solution {
    fun solution(n: Long): Long {
        var i = sqrt(n.toDouble()).toLong()
        if(i*i == n) {
            return (i+1)*(i+1)
        } else {
            return -1
        }
    }
}