
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        var oldIdx = 0
        var oldVal = nums[oldIdx]
        var removeCount = 0
        for i in 1..<nums.count {
            let newVal = nums[i]
            if oldVal != newVal {
                if i > oldIdx+1 {
                    nums[oldIdx + 1] = newVal
                }
                oldIdx += 1
                oldVal = nums[oldIdx]
            }
            else {
                removeCount += 1
            }
        }
        return nums.count - removeCount
    }
}

// Other Solution
/*
 func removeDuplicates(_ nums: inout [Int]) -> Int {
    var i = 0

    for num in nums {
        if nums[i] != num {
            i += 1
            nums[i] = num
        }
    }
    return i + 1
 }
 */
