func numberGame(_ nums: [Int]) -> [Int] {
    var numArr = nums
    var aliceVal = nums[0]
    var bobVal = nums[1]
    var arr: [Int] = []
    
    while !numArr.isEmpty {
        aliceVal = numArr.remove(at: numArr.index(of: numArr.min()!)!)
        bobVal = numArr.remove(at: numArr.index(of: numArr.min()!)!)
        arr.append(bobVal)
        arr.append(aliceVal)
    }
    
    return arr
}