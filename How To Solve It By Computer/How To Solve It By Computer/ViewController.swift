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
        let answer = FundamentalAlgs().passOrFail(from: [98, 34, 23, 100, 88], withPassValue: 70)
        print(answer)
    }

}

