//
//  AutoLayoutViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/04.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit
import WebKit

class AutoLayoutViewController: UIViewController,WKNavigationDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("AutoLayoutViewController")
        
        //テストのUILabel作成
        let label1 = UILabel(frame: CGRectMake(0, 0, 0, 0));
        label1.text = "中年サラリーマンです！";
        self.view.addSubview(label1);
        label1.translatesAutoresizingMaskIntoConstraints = false //Autolayoutの時はここはfalse
        label1.backgroundColor = UIColor.yellowColor();
        label1.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label1);
        
        //WebView（以下はWKWebViewを利用しています）
        let webView = WKWebView(frame: CGRectZero, configuration: WKWebViewConfiguration())

        webView.translatesAutoresizingMaskIntoConstraints = false
        let url = NSURL(string: "http://google.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        view.addSubview(webView)
        
        //ボタンx４追加
        var button1 = UIButton(frame: CGRectMake(0, 0, 100, 50));
        button1.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0);
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Test1", forState: UIControlState.Normal);
        self.view.addSubview(button1);
        
        var button2 = UIButton(frame: CGRectMake(0, 0, 100, 50));
        button2.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0);
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Test2", forState: UIControlState.Normal);
        self.view.addSubview(button2);
        
        var button3 = UIButton(frame: CGRectMake(0, 0, 100, 50));
        button3.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0);
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("Test3", forState: UIControlState.Normal);
        self.view.addSubview(button3);
        
        var button4 = UIButton(frame: CGRectMake(0, 0, 100, 50));
        button4.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0);
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("Test4", forState: UIControlState.Normal);
        self.view.addSubview(button4);
        
        //マトリックス追加。これは変数をvisualFormatに利用したい場合に使います。
        //画面の横幅に応じてボタンのサイズがかわるので、画面サイズからpadding分の数値を引いて４分割。
        let metricsDictionary = ["btnw_hogehoge":(Int( UIScreen.mainScreen().bounds.size.width)-50)/4];
        
        //ボタンを追加
        let viewsDictionary = ["top_hogehoge":label1,"middle_hogehoge":webView,"bottom_btn1_hogehoge":button1,"bottom_btn2_hogehoge":button2,"bottom_btn3_hogehoge":button3,"bottom_btn4_hogehoge":button4];//NSDictionaryOfVariableBindings Objective-C
        
        let view_constraint_1:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("|-8-[top_hogehoge]-8-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let view_constraint_2:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-50-[top_hogehoge]-[middle_hogehoge(300)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let view_constraint_3:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("|-8-[middle_hogehoge]-8-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        //横並びの設定。btnw_hogehogeの幅でbutton1、button2と並べていく。
        let view_constraint_4:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[bottom_btn1_hogehoge(btnw_hogehoge)]-8-[bottom_btn2_hogehoge(btnw_hogehoge)]-8-[bottom_btn3_hogehoge(btnw_hogehoge)]-8-[bottom_btn4_hogehoge(btnw_hogehoge)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricsDictionary, views: viewsDictionary)
        //以下はそれぞれのボタンの縦並びの設定をひとつずつ設定する。
        let view_constraint_5:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[middle_hogehoge]-[bottom_btn1_hogehoge(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let view_constraint_6:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[middle_hogehoge]-[bottom_btn2_hogehoge(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let view_constraint_7:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[middle_hogehoge]-[bottom_btn3_hogehoge(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let view_constraint_8:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[middle_hogehoge]-[bottom_btn4_hogehoge(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        
        view.addConstraints(view_constraint_1 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_2 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_3 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_4 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_5 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_6 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_7 as! [NSLayoutConstraint])
        view.addConstraints(view_constraint_8 as! [NSLayoutConstraint])    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}