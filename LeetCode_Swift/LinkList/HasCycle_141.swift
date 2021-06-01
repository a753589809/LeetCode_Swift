//
//  HasCycle_141.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/5/24.
//

// 141. 环形链表
// https://leetcode-cn.com/problems/linked-list-cycle/

extension LinkList {
    func hasCycle(_ head: ListNode?) -> Bool {
        var fast = head?.next
        var slow = head
        while fast != nil {
            if fast == slow {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
}
