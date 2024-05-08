class Solution {
    fun solution(numbers: IntArray): Int {
        val subjectToComparison = arrayOf(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
        var answer: Int = 0
        
        for(i in subjectToComparison) {
            if(subjectToComparison[i] !in numbers) {
                answer += subjectToComparison[i]
            }
        }
        return answer
    }
}