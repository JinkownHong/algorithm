class Solution {
    fun solution(phoneNumber: String): String {
        var numberList= phoneNumber.map{it.toString()}.toMutableList()
        var answer = ""

        for (i in 0 .. numberList.size - 5) {
            numberList[i] = "*"
        }
        answer = numberList.joinToString("")
        return answer
    }
}