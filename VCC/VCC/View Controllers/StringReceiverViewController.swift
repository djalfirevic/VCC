//
//  StringReceiverViewController.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import UIKit

final class StringReceiverViewController: UIViewController, Storyboarded {

    // MARK: - Properties
    @IBOutlet weak private var textLabel: UILabel!
    
    // MARK: - Actions
    @IBAction func onClose() {
        AppDelegate.shared.coordinator.dismissViewController()
    }

}

extension StringReceiverViewController: DataReceiver {
    
    // MARK: - DataReceiver
    func receiveData(_ data: Any) {
        if let text = data as? String {
            textLabel.text = text
        }
    }
    
}
