func isValid(_ str: String) -> Bool {
    let dict: [Character: Character] = ["}":"{", "]":"[", ")":"("]
    
    var stacks: [Character] = []
    
    for s in str {
        switch s {
        case "{", "[", "(": stacks.append(s)
        case "}", "]", ")": if stacks.last != dict[s] { return false } else { stacks.removeLast() }
        default: break
        }
    }
    
    return stacks.isEmpty
}

print(isValid("{}"))