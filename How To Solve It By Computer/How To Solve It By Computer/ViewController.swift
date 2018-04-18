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
      //  let removed = dogBreeds.remove(node: dogBreeds.nodeAt(index: 2)!)
       // print(dogBreeds)
       // print("removed: \(removed)")
       // print(dogBreeds.count)
        print("Removing Duplicates")
        let newList = removeDuplicates(from: &dogBreeds)
        print(newList)
    }
    
    func removeDuplicates(from list : inout LinkedList<String>) -> LinkedList<String> {
        var count = 0
        var start = list.nodeAt(index: count)
        var set = Set<String>()
        
        while start != nil {
            if set.contains(start!.value) {
                let _ = list.remove(node: start!)
            } else {
                set.insert(start!.value)
            }
            count += 1
            start = list.nodeAt(index: count)
        }
        return list
    }

}

