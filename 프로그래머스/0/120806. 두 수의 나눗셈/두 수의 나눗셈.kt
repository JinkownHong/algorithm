class Solution() {
    fun solution(num1:Int,num2:Int):Int{
        var answer = num1.toDouble() / num2
        return (answer * 1000).toInt()
    }
}