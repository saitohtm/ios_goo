//
//  UITabBarViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/29.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UITabBarViewController: UIViewController {
    
    private var window: UIWindow?
    private var myTabBarController: UITabBarController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstView: UIViewController = FirstViewController()
        let secondView: UIViewController = SecondViewController()
        firstView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)//アイコン
        secondView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        let viewArr = NSArray(objects: firstView, secondView)
        myTabBarController = UITabBarController()
        myTabBarController?.setViewControllers(viewArr as! [UIViewController], animated: false)
        self.window!.rootViewController = myTabBarController
        
        self.window!.makeKeyAndVisible()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
