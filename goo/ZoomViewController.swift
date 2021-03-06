//
//  ZoomViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController , UIScrollViewDelegate{
    
    var mainScrollView: UIScrollView!
    var pageImagesArr = ["iphone6.jpg","iphone6.jpg","iphone6.jpg"];
    
    let C_IMAGEVIEW_TAG = 1000;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScrollView = UIScrollView(frame: self.view.bounds)
        mainScrollView.pagingEnabled = true;
        mainScrollView.showsHorizontalScrollIndicator = false;
        mainScrollView.showsVerticalScrollIndicator = false;
        
        var innerScrollFrame:CGRect = mainScrollView.bounds;
        
        let pageSize = self.pageImagesArr.count;
        for (var i = 0; i < pageSize; i++) {
            
            let img:UIImage = UIImage(named:self.pageImagesArr[i])!;
            let iv:UIImageView = UIImageView(image:img);
            iv.frame = mainScrollView.frame;
            iv.tag = i + C_IMAGEVIEW_TAG;
            
            let pageScrollView = UIScrollView(frame: innerScrollFrame)
            pageScrollView.minimumZoomScale = 1
            pageScrollView.maximumZoomScale = 2
            pageScrollView.zoomScale = 1;
            pageScrollView.contentSize = iv.bounds.size;
            pageScrollView.delegate = self
            pageScrollView.showsHorizontalScrollIndicator = false;
            pageScrollView.showsVerticalScrollIndicator = false;
            pageScrollView.addSubview(iv);
            
            mainScrollView.addSubview(pageScrollView);
            
            if (i < 2) {
                innerScrollFrame.origin.x = innerScrollFrame.origin.x + innerScrollFrame.size.width;
            }
        }
        
        mainScrollView.contentSize = CGSizeMake(innerScrollFrame.origin.x + innerScrollFrame.size.width, mainScrollView.bounds.size.height);
        self.view.addSubview(mainScrollView);
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        let pageNum = mainScrollView.bounds.origin.x / mainScrollView.frame.width;
        return self.view.viewWithTag(Int(pageNum)+C_IMAGEVIEW_TAG) as! UIImageView;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}