//
//  NSURLSessionViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSURLSessionViewController: UIViewController, NSURLSessionDownloadDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newsUrlString = "http://swift-salaryman.com/files/download/ssziparchive_sample.zip"
        
        //ネットワーク上からZIPをダウンロードする
        let sessionConfiguration:NSURLSessionConfiguration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier("com.company")
        let session:NSURLSession! = NSURLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: nil)
        let downloadTask:NSURLSessionDownloadTask = session.downloadTaskWithURL(NSURL(string:newsUrlString)!);
        downloadTask.resume()
        
    }
    //ZIPファイルをネットワーク上からDL完了後に呼ばれる
    func URLSession(session: NSURLSession, downloadTask: NSURLSessionDownloadTask, didFinishDownloadingToURL location: NSURL){
        print(location);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}