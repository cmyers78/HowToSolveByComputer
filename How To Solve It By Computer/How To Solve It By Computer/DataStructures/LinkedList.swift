//
//  LinkedList.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 4/16/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import Foundation


public class Node<T> {
    var value : T
    var next : Node<T>?
    var previous : Node<T>?
    
    init(value : T) {
        self.value = value
    }
}

public class LinkedList<T> {
    fileprivate var head : Node<T>?
    private var tail : Node<T>?
    
    public var isEmpty : Bool {
        return head == nil
    }
    
    public var first : Node<T>? {
        return head
    }
    
    public var last : Node<T>? {
        return tail
    }
    
    public func append(value : T) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index : Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var idx = index
            while node != nil {
                if idx == 0 { return node }
                idx -= 1
                node = node?.next
            }
        }
        return nil
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node : Node<T>) -> T {
        let previous = node.previous
        let next = node.next
        
        if let prev = previous {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = previous
        
        if next == nil {
            tail = previous
        }
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension LinkedList : CustomStringConvertible {
    public var description : String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", "}
        }
        return text + "]"
    }
}
