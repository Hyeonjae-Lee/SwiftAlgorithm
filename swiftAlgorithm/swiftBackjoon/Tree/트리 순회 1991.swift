//
//  트리 순회 1991.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/20.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1991() {
//    var tree: [String: Node] = [:]
//
//    class Node {
//        var value: String
//        var leftChild: String
//        var rightChild: String
//
//        init (_ value: String, _ leftChild: String, _ rightChild: String) {
//            self.value = value
//            self.leftChild = leftChild
//            self.rightChild = rightChild
//        }
//    }
//
//    func preOrder(node: Node) {
//
//        print(node.value, terminator: "")
//        if node.leftChild != "." {
//            preOrder(node: tree[node.leftChild]!)
//        }
//        if node.rightChild != "." {
//            preOrder(node: tree[node.rightChild]!)
//        }
//    }
//
//    func inOrder(node: Node) {
//
//        if node.leftChild != "." {
//            inOrder(node: tree[node.leftChild]!)
//        }
//
//        print(node.value, terminator: "")
//        if node.rightChild != "." {
//            inOrder(node: tree[node.rightChild]!)
//        }
//
//    }
//
//    func postOrder(node: Node) {
//
//        if node.leftChild != "." {
//            postOrder(node: tree[node.leftChild]!)
//        }
//        if node.rightChild != "." {
//            postOrder(node:tree[node.rightChild]!)
//        }
//        print(node.value, terminator: "")
//    }
//
//    let N = Int(readLine()!)!
//
//    for _ in 0 ..< N {
//        var temp = readLine()!.split(separator: " ").map { String($0) }
//
//        tree[String(temp[0])] = Node(temp[0], temp[1], temp[2])
//
//    }
//
//    var ans = tree["A"]!
//    preOrder(node: ans)
//    print()
//    inOrder(node: ans)
//    print()
//    postOrder(node: ans)
//}

import Foundation

func solution1991() {
    
    class Node {
        var value: String
        var left: String
        var right: String
        
        init(value: String, left: String, right: String) {
            self.value = value
            self.left = left
            self.right = right
        }
    }
    
    var n = Int(readLine()!)!
    
    var tree = [String: Node]()
    
    func preOrder(node: Node) {
        print(tree[node.value]?.value)
        if node.left != "." {
            preOrder(node: tree[node.left]!)
        }
        if node.right != "."{
            preOrder(node: tree[node.right]!)
        }
    }
    
    for _ in 0 ..< n {
        var temp = readLine()!.split(separator: " ").map { String($0) }
        
        tree[temp[0]] = Node(value: temp[0], left: temp[1], right: temp[2])
    }
    
}
