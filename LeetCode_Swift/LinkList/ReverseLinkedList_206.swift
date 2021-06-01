//
//  ReverseLinkedList_206.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/5/27.
//

extension LinkList {
    func reverseLinkedList(head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next else {
            return head
        }
        let node = reverseLinkedList(head: next)
        next.next = h
        h.next = nil
        return node
    }
    
    func reverseLinkedList(_ head: ListNode?) -> ListNode? {
        var first = head
        var temp: ListNode?
        while first != nil {
            let second = first?.next
            first?.next = temp
            temp = first
            first = second
        }
        return temp
    }
}
