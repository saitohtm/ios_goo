//
//  SecondViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/29.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        print("SecondViewController")
        self.view.backgroundColor = UIColor.blueColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
