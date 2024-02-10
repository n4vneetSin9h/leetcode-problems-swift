func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    //        var idx = 0
    //        for i in 0..<nums.count {
    //            if nums[i] >= target {
    //                return i
    //            }
    //        }
    //        return 0
    
    
    var l = 0
    var r = nums.count
    
    while l < r {
        let m = (l + r) / 2
        if nums[m] == target {
            return m
        } else if nums[m] < target {
            l = m + 1
        } else {
            r = m
        }
    }
    
    return l
}
