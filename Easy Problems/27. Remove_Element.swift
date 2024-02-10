func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//        var completedArray = true
//        var numIdx = -1
//        while completedArray {
//            completedArray = false
//            for num in nums {
//                numIdx += 1
//                if num == val {
//                    completedArray = true
//                    nums.remove(at: numIdx)
//                    numIdx = -1
//                    break
//                }
//            }
//        }
    
    var idx = 0
    
    for num in nums {
        if num != val {
            nums[idx] = num
            idx += 1
        }
    }
    
    return idx
}
