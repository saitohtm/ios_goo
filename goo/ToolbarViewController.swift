//
//  UIToolbar.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class ToolbarViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        print("UIToolbar")
        
        var myToolbar: UIToolbar!
        self.view.backgroundColor = UIColor.cyanColor()
        myToolbar = UIToolbar(frame: CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 40.0))
        myToolbar.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-20.0)
        myToolbar.barStyle = UIBarStyle.BlackTranslucent
        myToolbar.tintColor = UIColor.whiteColor()
        myToolbar.backgroundColor = UIColor.blackColor()
        
        //Toolbarに追加するボタンの作成
        let myUIBarButtonTweet: UIBarButtonItem = UIBarButtonItem(title: "つぶやき", style:.Plain, target: self, action: "onToolBarButtonClick:")
        myUIBarButtonTweet.tag = 1
        myToolbar.items = [myUIBarButtonTweet]
        
        self.view.addSubview(myToolbar)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Toolbarのボタンクリックで取得する為の関数
    func onToolBarButtonClick(sender: UIBarButtonItem) {
        if sender.tag == 1 {
             let alert:UIAlertController = UIAlertController(title:"Swiftサラリーマン",
                message: "朝方４時に起きた次女を抱っこ紐で抱えたままコーディング中。冬の朝寒い眠い。",
                preferredStyle: UIAlertControllerStyle.Alert)
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    

}

