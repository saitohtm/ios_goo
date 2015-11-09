//
//  FirstViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/29.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        print("FirstViewController")
        self.view.backgroundColor = UIColor.redColor();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
