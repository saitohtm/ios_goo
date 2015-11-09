//
//  NSURLJSONPOST.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSURLJSONPOSTViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myUrl:NSURL = NSURL(string:"http://swift-salaryman.com/nsurlconnection_sayhello_post.php")!
        var myRequest:NSMutableURLRequest  = NSMutableURLRequest(URL: myUrl)
        
        myRequest.HTTPMethod = "POST"
        
        //JSON
        myRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        var params: [String: AnyObject] = [
            "type": "swift",
            "man": [
                "age": 33,
                "location": "Osaka",
                "lang": "ja"
            ]
        ]
        do{
//            myRequest.HTTPBody = try NSJSONSerialization.dataWithJSONObject(params,options: .MutableContainers) as! NSDictionary
        }catch{}
        
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