class Solution {
    fun solution(absolutes: IntArray, signs:BooleanArray): Int {
        var answer: Int = 123456789
        var answerArray = IntArray(signs.size)

        for(i in 0 .. signs.size-1) {
            if(signs[i]) answerArray[i] = absolutes[i]
            else answerArray[i] = absolutes[i] * -1
        }
        answer = answerArray.sum()
        return answer
    }
}