//
//  NSNotificationCenter.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/02.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSNotificationCenterViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("NSNotificationCenterViewController")
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "viewWillEnterForeground:", name: "applicationWillEnterForeground", object: nil)
        
    }

    func viewWillEnterForeground(notification: NSNotification?){
        print("呼ばれました！");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}