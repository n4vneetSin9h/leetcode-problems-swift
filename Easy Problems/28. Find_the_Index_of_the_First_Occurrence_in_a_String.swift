func strStr(_ haystack: String, _ needle: String) -> Int {
    let lastIdx = haystack.count-needle.count
    if lastIdx < 0 {
        return -1
    } else if lastIdx == 0 {
        return needle == haystack ? 0 : -1
    }
    var idx = 0
    let hArr = Array(haystack)
    
    for i in 0...lastIdx {
        if String(hArr[i..<i + needle.count]) == needle {
            idx = i
            break
        }
        if i == lastIdx-1 {
            idx = -1
        }
    }
    
    return idx
}
