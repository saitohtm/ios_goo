//
//  AlertViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        print("AlertViewController")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let alert:UIAlertController = UIAlertController(title:"Swiftサラリーマン",
            message: "今朝ヒゲ剃るの忘れました",
            preferredStyle: UIAlertControllerStyle.ActionSheet)
        presentViewController(alert, animated: true, completion: nil)
  
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel",
            style: UIAlertActionStyle.Cancel,
            handler:{
                (action:UIAlertAction!) -> Void in
                print("Cancel")
        })
        let defaultAction:UIAlertAction = UIAlertAction(title: "通常ボタン",
            style: UIAlertActionStyle.Default,
            handler:{
                (action:UIAlertAction!) -> Void in
                print("一般的なボタン")
        })
        
        let destructiveAction:UIAlertAction = UIAlertAction(title: "削除ボタン",
            style: UIAlertActionStyle.Destructive,
            handler:{
                (action:UIAlertAction!) -> Void in
                print("削除や変動的な処理の場合に利用します")
        })
        
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        alert.addAction(destructiveAction)
        
        self.navigationController?.pushViewController(alert, animated: true)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

