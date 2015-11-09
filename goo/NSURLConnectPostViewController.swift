//
//  NSURLConnectPostViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSURLConnectPostViewController: UIViewController {
    
    var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myUrl:NSURL = NSURL(string:"http://swift-salaryman.com/nsurlconnection_sayhello.php")!
        var myRequest:NSMutableURLRequest  = NSMutableURLRequest(URL: myUrl)
        
        let str = "name=swift-salaryman&pw=jitsuwahagetenaihigedage"
        let strData = str.dataUsingEncoding(NSUTF8StringEncoding)
        myRequest.HTTPMethod = "POST"
        myRequest.HTTPBody = strData
        
        NSURLConnection.sendAsynchronousRequest(myRequest, queue: NSOperationQueue.mainQueue(), completionHandler: self.getHttp)
    }
    
    func getHttp(res:NSURLResponse?,data:NSData?,error:NSError?){
        var myData:NSString = NSString(data: data!, encoding: NSUTF8StringEncoding)!
        print(myData)//Hello! Hello! I am from server of swift-salaryman.com!!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}