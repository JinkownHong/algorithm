class Solution {
    fun solution(s: String): String {
        var sList = s.toMutableList()
        var answer = ""

        if (s.length % 2 == 0) {
            answer = sList[(s.length / 2) - 1].toString() + sList[s.length / 2].toString()
        }
        else {
            answer = sList[s.length / 2].toString()
        }
        return answer
    }
}