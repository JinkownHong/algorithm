import kotlin.math.*
class Solution {
    fun solution(a: Int, b: Int) =(min(a, b)..max(a, b)).fold(0L) { total, next -> total + next }.toLong()
}