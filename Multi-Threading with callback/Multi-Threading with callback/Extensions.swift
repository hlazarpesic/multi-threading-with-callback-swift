//
//  Extensions.swift
//  Multi-Threading with callback
//
//  Created by Lazar Pešić on 9/6/18.
//  Copyright © 2018 Lazar Pešić. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: WorkDispatcher {
    func dispatchWork(background: @escaping () -> (), completion: (() -> ())?) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        DispatchQueue.global(qos: .userInitiated).async {
            background()
            
            DispatchQueue.main.async {
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                completion?()
            }
        }
    }
}
