//
//  UIProgressViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UIProgressViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.orangeColor()// 背景色を白色にする
        
        let screenWidth =  UIScreen.mainScreen().bounds.size.width;//スクリーン幅
        let myProgressView: UIProgressView = UIProgressView(frame: CGRectMake(0, 100, screenWidth, 10))
        myProgressView.progressTintColor = UIColor.whiteColor()// バーの読み込みの色は黒
        myProgressView.trackTintColor = UIColor.blackColor()// バーの背景は灰色
        
        myProgressView.progress = 0.2// 進捗セット(0.0~1.0)
        myProgressView.setProgress(1.0, animated: true)// アニメーションあり
        
        self.view.addSubview(myProgressView)//viewに追加    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}