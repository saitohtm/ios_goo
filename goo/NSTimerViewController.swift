//
//  NSTimer.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/29.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSTimerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("NSTimerViewController")
        var timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("onHigenobita"), userInfo: nil, repeats: true);
        
    }
    
    func onHigenobita(){
        //ここが実行されます
        print("ひげ伸びた！");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}