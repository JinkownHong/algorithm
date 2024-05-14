class Solution {
    fun solution(n: Int): String {
        var answer = ""

        if (n % 2 == 0) {
            for(a in 1..n/2) {
                answer += "수박"
            }
        } else {
            answer = "수"
            for(a in 1..n/2) {
                answer += "박수"
            }
        }
        return answer
    }
}