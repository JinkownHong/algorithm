class Solution {
    fun solution(left: Int, right: Int): Int {
        var answer: Int = 0
        var storage = left

        while (storage != right+1) {
            var i = 0
            val list = mutableListOf<Int>()
            while (storage != i) {
                i++
                if (storage % i == 0) {
                    list.add(i)
                } else {
                    continue
                }
            }
            if (list.size % 2 == 0) {
                answer += storage
            } else {
                answer -= storage
            }
            storage++
        }
        return answer
    }
}