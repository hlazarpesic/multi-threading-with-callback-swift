//
//  WorkDispatcher.swift
//  Multi-Threading with callback
//
//  Created by Lazar Pešić on 9/6/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import Foundation

protocol WorkDispatcher {
    func dispatchWork(background: @escaping ()->(), completion: (()->())?)
}
