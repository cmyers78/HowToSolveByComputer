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
        let dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Great Dane")
        
        print(dogBreeds)
        print(dogBreeds.count)
        let removed = dogBreeds.remove(node: dogBreeds.nodeAt(index: 2)!)
        print(dogBreeds)
        print("removed: \(removed)")
        print(dogBreeds.count)
        
    }

}

