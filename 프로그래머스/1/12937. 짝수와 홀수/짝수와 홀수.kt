class Solution {
    fun solution(num: Int): String {
        var answer = ""
        
        when {
            (num % 2 == 0) -> answer = "Even"
            (num % 2 != 0) -> answer = "Odd"
        }
        
        return answer
    }
}