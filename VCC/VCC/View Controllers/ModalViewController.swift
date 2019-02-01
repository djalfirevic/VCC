//
//  ModalViewController.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import UIKit

final class ModalViewController: UIViewController, Storyboarded {
    
    // MARK: - Actions
    @IBAction func onClose() {
        AppDelegate.shared.coordinator.dismissViewControllerAndForwardData("Data to be presented upon closing")
    }
    
}
