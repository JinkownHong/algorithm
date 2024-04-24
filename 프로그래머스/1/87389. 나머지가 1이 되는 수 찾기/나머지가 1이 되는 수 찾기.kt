
class Solution {
    fun solution(n: Int) = (2..n-1).first { n % it == 1 }
}