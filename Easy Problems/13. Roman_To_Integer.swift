// let romanHash = ["I": 1,
//                  "V": 5,
//                  "X": 10,
//                  "L": 50,
//                  "C": 100,
//                  "D": 500,
//                  "M": 1000]

class Solution {
    func romanToInt(_ s: String) -> Int {
//        if s == "" {
//            return 0
//        }
//        if s.count == 1 {
//            return romanHash[s]!
//        }
//        
//        let arr = Array(s)
//        
//        var newString = ""
//        
//        for i in 1..<arr.count {
//            newString += String(arr[i])
//        }
//        
//        let fstNum = romanHash[String(arr[0])]!
//        let scndNum = romanHash[String(arr[1])]!
//        
//        if fstNum >= scndNum {
//            return romanToInt(newString) + fstNum
//        } else {
//            return romanToInt(newString) - fstNum
//        }
        
        var num = 0
        var ans = 0
        
        var i = s.count - 1
        while i >= 0 {
            switch Array(s)[i] {
            case "I":
                num = 1
            case "V":
                num = 5
            case "X": 
                num = 10
            case "L":
                num = 50
            case "C":
                num = 100
            case "D":
                num = 500
            case "M":
                num = 1000
            default:
                break
            }
            
            if 4 * num < ans {
                ans -= num
            } else {
                ans += num
            }
            i -= 1
        }
        return ans
    }
    
}



