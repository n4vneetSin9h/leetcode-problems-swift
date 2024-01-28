// Brute Force
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

// Hash Map
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (idx, val) in nums.enumerated() {
            if let adnt = dict[val] {
                return [idx, adnt]
            } else {
                dict[target - val] = idx
            }
        }

        return []
    }
}

// Pointer based
class Solution3 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        let sortedNums = nums.sorted()
        var left = 0
        var right = nums.count - 1

        while left < right {
            let leftNum = sortedNums[left]
            let rightNum = sortedNums[right]
            let sum = leftNum + rightNum
            if sum == target {
                if let index1 = nums.firstIndex(of: leftNum), let index2 = nums.lastIndex(of: rightNum) {
                    return [index1, index2]
                }
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return []
    }
}
