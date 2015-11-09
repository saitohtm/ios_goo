//
//  MainTabViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/29.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    var firstView: FirstViewController!
    var secondView: SecondViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView = FirstViewController()
        secondView = SecondViewController()
        
        firstView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        secondView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        
        let secondViewNavigationController = UINavigationController(rootViewController: secondView)
        secondView.title = "UINavigationControllerです";
        self.setViewControllers([firstView, secondViewNavigationController], animated: false)

//        self.secondViewNavigationController.navigationBarHidden = NO;//Yes = 表示, No = 非表示
        
    }
}