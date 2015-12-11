//
//  FirstViewController.swift
//  First-Time-ViewController
//
//  Created by mitchell hudson on 12/11/15.
//  Copyright © 2015 mhudson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func continueButtonTapped(sender: UIButton) {
        if let vc = parentViewController as? ViewController {
            vc.firstViewContinueToApp()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
