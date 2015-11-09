//
//  NSURLConnectionViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSURLConnectViewController: UIViewController {
    
    var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myUrl:NSURL = NSURL(string:"http://swift-salaryman.com/nsurlconnection_sayhello.php")!
        let myRequest:NSURLRequest  = NSURLRequest(URL: myUrl)
//        NSURLConnection.sendAsynchronousRequest(myRequest, queue: NSOperationQueue.mainQueue(), completionHandler: self.getHttp)
        
        // swift2.0
        // 今一分からない
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: configuration, delegate:nil, delegateQueue:NSOperationQueue.mainQueue())
        let task = session.dataTaskWithRequest(myRequest, completionHandler: {
            (data, response, error) -> Void in
            do {
                
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments ) as! NSArray
                
            } catch {
                
                //エラー処理
                
            }
            
        })
        task.resume()
    }
    
    func getHttp(res:NSURLResponse?,data:NSData?,error:NSError?){
        let myData:NSString = NSString(data: data!, encoding: NSUTF8StringEncoding)!
        print(myData)//Hello! Hello! I am from server of swift-salaryman.com!!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}