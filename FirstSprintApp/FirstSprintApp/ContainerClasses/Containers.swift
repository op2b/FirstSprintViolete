//
//  Containers.swift
//  FirstSprintApp
//
//  Created by Bokovikov George on 26/10/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import Foundation

// Container protocol

protocol Container {
    associatedtype Item
    mutating func append(_ value: Item)
    var count: Int { get }
    subscript(i: Int) -> Item? { get }
}

// Queue implementation conforming to Container protocol

public class Queue<Element>: Container {
    // conformance to Container protocol
    var data = [Element]()
    func append(_ value: Element) {
        data.append(value)
    }
    var count: Int {
        return data.count
    }
    subscript(i: Int) -> Element? {
        if i < 0 || i > (count - 1) || empty { return nil }
        return data[i]
    }
    // methods associated w/ Queue data structure
    func pop() -> Element? {
        if empty { return nil }
        return data.removeFirst()
    }
    var empty: Bool {
        return count == 0
    }
}

// Doubly Linked List implementation comnforming to Container protocol

public class List<T>: Container {
    class Node<T> {
        var data: T
        var next: Node<T>?
        var prev: Node<T>?
        
        public init(_ value: T) {
            data = value
        }
    }
    private var head: Node<T>?
    var empty: Bool {
        return head == nil
    }
    var count: Int {
        if head != nil {
            var counter = 1
            var node = head
            while node?.next != nil {
                counter += 1
                node = node?.next
            }
            return counter
        }
        return 0
    }
    func append(_ value: T) {
        let newNode = Node<T>(value)
        if head == nil {
            head = newNode
            return
        }
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = newNode
        newNode.prev = node
    }
    subscript(i: Int) -> T? {
        if i < 0 || i > (count - 1) { return nil }
        var node = head
        var j = 0
        while j < i {
            node = node?.next
            j += 1
        }
        return node?.data
    }
    init() {
        head = nil
    }
}
