class Solution {
    fun solution(s: String): String {

        var splitWords = s.split(' ')
        var answer = arrayOf<String>()

        splitWords.forEach { word ->

            var string = ""
            word.forEachIndexed { index, char ->
                string += when (index % 2) {
                    0 -> char.uppercaseChar()
                    else -> char.lowercaseChar()
                }
            }

            answer += string
        }

        return answer.joinToString(' '.toString())
    }
}