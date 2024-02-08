
public class ListNode {
    public var val: Int
    public var next: ListNode?
    private var items: [Int] = []
    public var count: Int {
        var c = 0
        var node: ListNode? = self
        while node != nil {
            c += 1
            node = node!.next
        }
        return c
    }
    
    public init() {
        self.val = 0; self.next = nil;
    }
    public init(_ val: Int) {
        self.val = val; self.next = nil;
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
    public func printList() {
        var node: ListNode? = self
        while node != nil {
            items.append(node!.val)
            node = node!.next
        }
        print(items)
    }
}
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        if list1 == nil || list2 == nil { return list1 ?? list2 }
        
        if list1?.val ?? 0 < list2?.val ?? 0 {
            list1?.next = mergeTwoLists(list1?.next, list2)
            return list1
        } else {
            list2?.next = mergeTwoLists(list2?.next, list1)
            return list2
        }
        
        
//        if list1 == nil, list2 == nil {
//            return nil
//        }
//        var head1: ListNode? = list1
//        var head2: ListNode? = list2
//        var c = 0
//        var node: ListNode? = list1
//        while node != nil {
//            c += 1
//            node = node!.next
//        }
//
//        node = list2
//        while node != nil {
//            c += 1
//            node = node!.next
//        }
//
//        let newList = ListNode()
//        var newNode = newList
//        for i in 0..<c {
//            if let h1 = head1, let h2 = head2 {
//                if h1.val < h2.val {
//                    newNode.val = h1.val
//                    head1 = h1.next
//                } else {
//                    newNode.val = h2.val
//                    head2 = h2.next
//                }
//            } else if let h1 = head1 {
//                newNode.val = h1.val
//                head1 = h1.next
//            } else if let h2 = head2 {
//                newNode.val = h2.val
//                head2 = h2.next
//            }
//            if i != c-1 {
//                newNode.next = ListNode()
//                newNode = newNode.next!
//            }
//        }
//        return newList
    }
}


