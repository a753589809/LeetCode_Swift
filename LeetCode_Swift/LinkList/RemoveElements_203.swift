//
//  RemoveElements_203.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/6/8.
//

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var first: ListNode? = ListNode(0)
    first?.next = head
    var second: ListNode? = first
    while second?.next != nil {
        if second?.next?.val == val {
            second?.next = second?.next?.next
        } else {
            second = second?.next
        }
    }
    return first?.next
}

func removeElements2(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard let head = head else {
        return nil
    }
    head.next = removeElements2(head.next, val)
    return head.val == val ? head.next : head
}
