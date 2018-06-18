//
//  ViewController.swift
//  How To Solve It By Computer
//
//  Created by Christopher Myers on 10/13/17.
//  Copyright © 2017 Dragoman Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Great Dane")
        dogBreeds.append(value: "Bulldog")
        print(dogBreeds)
        print(dogBreeds.count)
        print("Removing Duplicates")
        let newList = removeDuplicates(from: &dogBreeds)
        print(newList)
    }
    
    func removeDuplicates<T : Hashable>(from list : inout LinkedList<T>) -> LinkedList<T> {
        var start = list.first
        var set = Set<T>()
        
        while start != nil {
            if set.contains(start!.value) {
                _ = list.remove(node: start!)
            } else {
                set.insert(start!.value)
            }
            start = start?.next
        }
        return list
    }
}
