//
//  ListNode.swift
//  LeetCode_Swift
//
//  Created by xuting on 2021/5/24.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: Equatable {
    public static func == (l: ListNode, r: ListNode) -> Bool {
        return l === r
    }
}

class LinkList {
    
}
 
