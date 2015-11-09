//
//  UITableViewContorrer.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UITableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    //テーブルビューインスタンス作成
    var tableView: UITableView  =   UITableView()
    
    //テーブルに表示するセル配列
    var items: [String] = ["Swift-Salaryman", "Manga-Salaryman", "Design-Salaryman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //テーブルビュー初期化、関連付け
        tableView.frame         =   CGRectMake(0, 50, 320, 200);
        tableView.delegate      =   self
        tableView.dataSource    =   self
 //       tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
 //CustomViewCell
        tableView.registerClass(CustomTableViewCell.self, forCellReuseIdentifier: "customCell")

        self.view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")!
//        cell.textLabel?.text = self.items[indexPath.row]
// CustomViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath) as! CustomTableViewCell
        
        cell.titleLabel.text = self.items[indexPath.row]
        cell.contentLabel.text = "ホゲホゲ";
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("セルを選択しました！ #\(indexPath.row)!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
};