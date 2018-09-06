//
//  ViewController.swift
//  Multi-Threading with callback
//
//  Created by Lazar Pešić on 9/6/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dispatchWork(background: {
            self.countTo100000()
        }, completion: {
            print("DONE")
        })
    }

    func countTo100000(){
        for num in 0...100000{
            print(num)
        }
    }
}

