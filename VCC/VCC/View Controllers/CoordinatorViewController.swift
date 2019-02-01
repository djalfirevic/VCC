//
//  CoordinatorViewController.swift
//  VCC
//
//  Created by Djuro Alfirevic on 1/31/19.
//  Copyright © 2019 Djuro Alfirevic. All rights reserved.
//

import UIKit

final class CoordinatorViewController: UIViewController, Storyboarded {

    // MARK: - Properties
    private var backViewController: UIViewController?
    private var activeViewController: UIViewController?
    private var mainNavigationController: UINavigationController!
    
    // MARK: - Public API
    func setRootViewController(_ viewController: UIViewController) {
        mainNavigationController = UINavigationController(rootViewController: viewController)
        add(mainNavigationController)
    }
    
    func pushViewController(_ viewController: UIViewController) {
        mainNavigationController.pushViewController(viewController, animated: true)
        
        activeViewController = viewController
    }
    
    func presentViewController(_ viewController: UIViewController) {
        present(viewController, animated: true)
        
        activeViewController = viewController
    }
    
    func dismissViewController(_ viewController: UIViewController? = nil) {
        if let viewController = viewController {
            viewController.dismiss(animated: true)
        } else {
            closeBackViewController()
        }
    }
    
    func dismissViewControllerAndForwardData(_ data: Any) {
        if let backViewController = backViewController {
            if let backViewController = backViewController as? DataReceiver {
                backViewController.receiveData(data)
            }
        }
        
        dismissViewController(activeViewController)
    }
    
    func presentViewController(_ viewController: UIViewController, andSetBackViewController backViewController: UIViewController) {
        activeViewController = viewController
        present(viewController, animated: true) {
            self.setBackViewController(backViewController)
        }
    }
    
    // MARK: - Private API
    private func closeBackViewController() {
        guard let backViewController = backViewController else { return }
        
        var frame = backViewController.view.frame
        frame.origin.y = UIScreen.main.bounds.size.height
        
        UIView.animate(withDuration: 0.3, animations: {
            backViewController.view.frame = frame
        }) { (completed) in
            if completed {
                backViewController.remove()
            }
        }
    }
    
    private func setBackViewController(_ viewController: UIViewController) {
        backViewController?.remove()
        add(viewController)
        view.sendSubviewToBack(viewController.view)
        
        print(viewController.view.constraints)
        
        view.sendSubviewToBack(mainNavigationController.view)
        
        backViewController = viewController
    }

}
