func longestCommonPrefix(_ strs: [String]) -> String {
    var common = strs[0]
    for s in strs {
        while !s.hasPrefix(common) {
            common = String(common.dropLast())
            if common == "" {
                return common
            }
        }
    }
    return common
}