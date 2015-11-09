//
//  WebViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/21.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class WebViewController: UIViewController,UIWebViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("WebViewController")

        let myWebView : UIWebView = UIWebView()
        myWebView.delegate = self
        myWebView.frame = self.view.bounds
        self.view.addSubview(myWebView)

        //UserAgentをモバイルに設定する
        NSUserDefaults.standardUserDefaults().setObject("User-Agent: Mozilla/5.0 (iPad; U; CPU OS 4_3_2 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8H7 Safari", forKey:"UserAgent");
        NSUserDefaults.standardUserDefaults().synchronize();
        
        let url: NSURL = NSURL(string: "http://swift-salaryman.com")!
        let request: NSURLRequest = NSURLRequest(URL: url)
        myWebView.loadRequest(request)
    }
    
    //ページが読み終わったときに呼ばれる関数
    func webViewDidFinishLoad(webView: UIWebView) {
        print("ページ読み込み完了しました！")
    }
    
    //ページを読み始めた時に呼ばれる関数
    func webViewDidStartLoad(webView: UIWebView) {
        print("ページ読み込み開始しました！")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}