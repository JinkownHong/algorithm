class Solution {
     fun solution(num: Int): Int {
        var answer = 0
        var countTry = 0
        var number = num.toLong()

        while (number != 1L) {
            when {
                number % 2 == 0L -> number /= 2
                number % 2 != 0L -> number = number * 3 + 1
            }
            countTry += 1
        }
        if(countTry > 500) {answer =  -1}
        if (countTry <= 500) {answer =  countTry}
        return answer
    }
}