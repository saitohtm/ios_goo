//
//  UISearchBarViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit
class UISearchBarViewController: UIViewController, UISearchBarDelegate {
    
    var mySearchBar: UISearchBar!
    var myLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //サーチバー作成
        mySearchBar = UISearchBar()
        mySearchBar.delegate = self
        mySearchBar.frame = CGRectMake(0, 0, 300, 50)
        mySearchBar.layer.position = CGPoint(x: self.view.bounds.width/2, y: 50)
        mySearchBar.showsCancelButton = true
        mySearchBar.placeholder = "会社への不満を入力して下さい"
        self.view.addSubview(mySearchBar)
        
        //ラベル（出力管理用）
        myLabel = UILabel(frame: CGRectMake(10,80,300,30))
        myLabel.layer.borderWidth = 1.0
        myLabel.layer.borderColor = UIColor.grayColor().CGColor
        self.view.addSubview(myLabel)
        
    }
    
    //サーチバー更新時(UISearchBarDelegateを関連づけておく必要があります）
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        myLabel.text = searchText
    }
    
    //キャンセルクリック時(UISearchBarDelegateを関連づけておく必要があります）
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        myLabel.text = ""
        mySearchBar.text = ""
    }
    
    //サーチボタンクリック時(UISearchBarDelegateを関連づけておく必要があります）
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        myLabel.text = "社内に同じ意見があるか検索中..."
        mySearchBar.text = ""
        self.view.endEditing(true)
    }
    
}