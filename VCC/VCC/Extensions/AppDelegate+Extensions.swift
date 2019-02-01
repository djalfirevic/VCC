//
//  AppDelegate+Extensions.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
}
