//
//  UICollectionViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UICollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var myCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(50, 50)//大きさ
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16)//マージン
        layout.headerReferenceSize = CGSizeMake(100,30)
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        self.view.addSubview(myCollectionView)
        
    }
    
    //Cellがクリックされた時によばれます
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("選択しました: \(indexPath.row)")
    }
    
    //Cellの合計数
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    //Cellオブジェクトを返す。ここでカスタムセルにしたりするとそれぞれ変更できる。
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) 
        cell.backgroundColor = UIColor.redColor()
        
        //-----
        //おまけ、Swiftサラリーマンのおっさんの顔
        let url = NSURL(string:"http://swift-salaryman.com/files/image/page_top.gif");
        let imageData: NSData
       
        do{
            imageData = try NSData(contentsOfURL:url!,options: NSDataReadingOptions.DataReadingMappedIfSafe)
            let img = UIImage(data:imageData)
            let iv = UIImageView(image:img)
            iv.frame = CGRectMake(0, 0, 50, 50)
            iv.backgroundColor = UIColor.greenColor()
            cell.addSubview(iv)
        }catch{
            print("Error: can't create image.")
        }
        
        
        
        
        //-----
        
        return cell
    }
    
}