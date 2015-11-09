//
//  SlideViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController {

    var scrollView: UIScrollView!
    var pageImagesArr = ["iphone6.jpg","iphone6.jpg","iphone6.jpg"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("SlideViewController")
        
        let width = self.view.frame.maxX, height = self.view.frame.maxY
        let pageSize = self.pageImagesArr.count;
        
        //ScrollViewの作成
        scrollView = UIScrollView(frame: self.view.frame)
        scrollView.pagingEnabled = true
        scrollView.frame = CGRectMake(0,0,width,height);
        scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0)
        
        //各ページの作成
        for var i = 0; i < pageSize; i++ {
            let img:UIImage = UIImage(named:self.pageImagesArr[i])!;
            let iv:UIImageView = UIImageView(image:img);
            iv.frame = CGRectMake(CGFloat(i) * width, 0, width, height);
            scrollView.addSubview(iv)
        }
        self.view.addSubview(scrollView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}