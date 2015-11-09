//
//  NSURLViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSURLViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("NSURLViewController")
        
        //URLからNSURLを生成する方法
        let url = NSURL(string: "http://swift-salaryman.com/files/ossan1.jpg");
        //ローカルファイルからNSURLを生成する方法(以下はプロジェクトに組み込んでいるhoge.htmlを読み込んだいます)
//      let url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hoge", ofType: "html"))

        print("absoluteString : %", url!.absoluteString);
        print("absoluteURL : %", url!.absoluteURL);
        print("baseURL : %", url!.baseURL);
        print("fragment : %", url!.fragment);
        print("host : %", url!.host);
        print("lastPathComponent : %", url!.lastPathComponent);
        print("parameterString : %", url!.parameterString);
        print("password : %", url!.password);
        print("path : %", url!.path);
        print("pathComponents : %", url!.pathComponents);
        print("pathExtension : %", url!.pathExtension);
        print("port : %", url!.port);
        print("query : %", url!.query);
        print("relativePath : %", url!.relativePath);
        print("relativeString : %", url!.relativeString);
        print("resourceSpecifier : %", url!.resourceSpecifier);
        print("scheme : %", url!.scheme);
        print("standardizedURL : %", url!.standardizedURL);
        print("user : %", url!.user);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}