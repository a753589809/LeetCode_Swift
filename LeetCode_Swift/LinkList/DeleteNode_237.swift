//
//  DeleteNode_237.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/5/24.
//

import Foundation

/// 237. 删除链表中的节点
/// https://leetcode-cn.com/problems/delete-node-in-a-linked-list/

extension LinkList {
    // 删除node节点
    func deleteNode(_ node: ListNode?) {
        guard let node = node, let next = node.next else {
            return
        }
        // 先把下一个节点的值存到当前节点
        node.val = next.val
        // 当前节点的next指向下一个节点的next
        node.next = next.next
    }
}
