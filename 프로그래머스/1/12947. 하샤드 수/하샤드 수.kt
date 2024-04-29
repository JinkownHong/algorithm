class Solution {
    fun solution(x: Int): Boolean {
        val digitX = x.toString().map { it.toString().toInt() }.toList()
        var i: Int = 0
        var addX = 0

        while (i in 0..(x.toString().length) - 1) {
            addX += digitX[i]
            i += 1
        }

        return if (x % addX == 0) true
        else false
    }
}