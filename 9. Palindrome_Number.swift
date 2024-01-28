func isPalindrome(_ x: Int) -> Bool {
    var n = x
    var r = 0
    while n > 0 {
        r = r * 10 + n % 10
        n /= 10
    }
    return x == r 
}