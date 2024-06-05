fun main(args: Array<String>) {
    val (a, b) = readLine()!!.split(' ').map(String::toInt)

    var star : String = ""
    repeat(a){
        star += "*"
    }

    repeat(b){
        println(star)
    }
}