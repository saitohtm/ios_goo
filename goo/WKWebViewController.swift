//
//  WKWebViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/23.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import Foundation
import WebKit

class WKWebViewController: UIViewController,WKNavigationDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView = WKWebView(frame: CGRectZero, configuration: WKWebViewConfiguration())
//        webView.setTranslatesAutoresizingMaskIntoConstraints = (false)
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[webView]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["webView": webView]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[webView]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["webView": webView]))
        
        let url = NSURL(string: "http://swift-salaryman.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        print("Finished navigating to url")
    }
    
}