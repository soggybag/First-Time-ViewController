//
//  ViewController.swift
//  First-Time-ViewController
//
//  Created by Mitch Hudson on 12/10/15.
//  Copyright © 2015 mhudson. All rights reserved.
//

import UIKit

// TODO: Add a link from first view to app view.

class ViewController: UIViewController {

    
    func firstViewContinueToApp() {
        print("ViewController first view wants to continue on to app")
        if let appVC = storyboard?.instantiateViewControllerWithIdentifier("AppViewController") {
            let firstVC = childViewControllers[0]
            
            appVC.view.frame = firstVC.view.frame
            
            firstVC.willMoveToParentViewController(nil)
            addChildViewController(appVC)
            
            transitionFromViewController(firstVC, toViewController: appVC, duration: 1.0, options: .TransitionCrossDissolve, animations: { () -> Void in
                    //
                
                }, completion: { (completed: Bool) -> Void in
                    firstVC.removeFromParentViewController()
                    appVC.didMoveToParentViewController(self)
            })
        }
    }
    
    
    
    func loadAppViewController() {
        if let appVC = storyboard?.instantiateViewControllerWithIdentifier("AppViewController") {
            addChildViewController(appVC)
            view.addSubview(appVC.view)
            print("Adding App View")
        }
    }
    
    
    
    func loadFirstViewController() {
        if let firstVC = storyboard?.instantiateViewControllerWithIdentifier("FirstTimeViewController") {
            addChildViewController(firstVC)
            view.addSubview(firstVC.view)
            print("Adding First Time View")
            // Now that we will have viewed this first time view set a value in NSUserDefaults
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "hasViewFirstTime")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the hasViewFirstTime from NSUserDefaults
        if NSUserDefaults.standardUserDefaults().objectForKey("hasViewFirstTime") == nil {
            // Have not viewed the firstTime view show show it
            loadFirstViewController()
        } else {
            // We've already viewed the first time thing, so load app view
            loadAppViewController()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

