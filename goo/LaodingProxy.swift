//
//  LaodingProxy.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

struct LoadingProxy{
    
    static var myActivityIndicator: UIActivityIndicatorView!
    
    static func set(v:UIViewController){
        self.myActivityIndicator = UIActivityIndicatorView()
        self.myActivityIndicator.frame = CGRectMake(0, 0, 50, 50)
        self.myActivityIndicator.center = v.view.center
        self.myActivityIndicator.hidesWhenStopped = false
        self.myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.White
        self.myActivityIndicator.backgroundColor = UIColor.grayColor();
        self.myActivityIndicator.layer.masksToBounds = true
        self.myActivityIndicator.layer.cornerRadius = 5.0;
        self.myActivityIndicator.layer.opacity = 0.8;
        v.view.addSubview(self.myActivityIndicator);
        
        self.off();
    }
    static func on(){
        myActivityIndicator.startAnimating();
        myActivityIndicator.hidden = false;
    }
    static func off(){
        myActivityIndicator.stopAnimating();
        myActivityIndicator.hidden = true;
        
    }
    
}