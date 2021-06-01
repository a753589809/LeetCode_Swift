//
//  MiddleNode_876.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/6/1.
//
// https://leetcode-cn.com/problems/middle-of-the-linked-list/solution/
// 
extension LinkList {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head?.next
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
