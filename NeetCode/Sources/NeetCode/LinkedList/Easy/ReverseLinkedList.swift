//
//  ReverseLinkedList.swift
//  NeetCode
//
//  Created by José Carlos García on 11/01/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

final class ReverseLinkedList {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head else { return nil }
        var current = head
        var previous: ListNode?
        while let next = current.next {
            current.next = previous
            previous = current
            current = next
        }
        current.next = previous
        return current
    }
}
