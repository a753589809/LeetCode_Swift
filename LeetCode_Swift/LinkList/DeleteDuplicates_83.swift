//
//  Delete_83.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/6/1.
//
// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var temp = head
    while temp?.next != nil {
        if let val = temp?.val, val == temp?.next?.val {
            temp?.next = temp?.next?.next
        } else {
            temp = temp?.next
        }
    }
    return head
}
