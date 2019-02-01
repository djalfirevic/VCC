//
//  WelcomeViewController.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController, Storyboarded {
    
    // MARK: - Actions
    @IBAction func onHome() {
        AppDelegate.shared.coordinator.pushViewController(HomeViewController.instantiate())
    }
    
    @IBAction func onModal() {
        AppDelegate.shared.coordinator.presentViewController(ModalViewController.instantiate(), andSetBackViewController: StringReceiverViewController.instantiate())
    }
    
}
