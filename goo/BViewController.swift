//
//  BViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/04.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class BViewController: UIViewController,UIWebViewDelegate  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("BViewController")

        let myWebView : UIWebView = UIWebView()
        myWebView.delegate = self
        myWebView.frame = self.view.bounds
        self.view.addSubview(myWebView)
        let url: NSURL = NSURL(string: "http://geton.goo.to")!
        let request: NSURLRequest = NSURLRequest(URL: url)
        myWebView.loadRequest(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}