//
//  UIView+Extensions.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func alignCenterX(to view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func alignCenterX() {
        guard let superview = superview else {
            return
        }
        
        centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
    }
    
    func alignCenterY(to view: UIView) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func alignCenterY() {
        guard let superview = superview else {
            return
        }
        
        centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
    }
    
    func addConstraints(width: CGFloat, height: CGFloat) {
        widthAnchor.constraint(equalToConstant: width).isActive = true
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func fillSuperview(with margin: CGFloat = 0.0) {
        guard let superview = superview else {
            return
        }
        
        topAnchor.constraint(equalTo: superview.topAnchor, constant: margin).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: margin).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -margin).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margin).isActive = true
    }
    
    func widthAndHeightEqual(to view: UIView) {
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    func sameConstraints(as view: UIView) {
        widthAndHeightEqual(to: view)
        alignCenterX(to: view)
        alignCenterY(to: view)
    }
    
}
