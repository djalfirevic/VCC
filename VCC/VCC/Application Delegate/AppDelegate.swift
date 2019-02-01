//
//  AppDelegate.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {

    // MARK: - Properties
    var window: UIWindow?
    var coordinator: CoordinatorViewController!

    // MARK: - Private API
    private func setupInitialFlow() {
        coordinator = CoordinatorViewController.instantiate()
        window?.rootViewController = coordinator
        
        coordinator.setRootViewController(WelcomeViewController.instantiate())
    }
    
}

extension AppDelegate: UIApplicationDelegate {
    
    // MARK: - UIApplicationDelegate
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        setupInitialFlow()
        
        return true
    }
    
}
