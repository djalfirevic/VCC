//
//  UIViewController+Extensions.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    class var identifier: String {
        return String(describing: self)
    }
    
    func logSelf() {
        print(String(describing: self))
    }
    
    // View controller containment.
    func add(_ child: UIViewController) {
        child.view.frame = view.frame
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        removeFromParent()
        view.removeFromSuperview()
    }
    
}
