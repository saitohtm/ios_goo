//
//  NSFileManager.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSFileManagerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("NSFileManager")

        // 作成
        let docDir = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let fileName = "hogeTest.txt"
        let fileObject = "I am Swift-Salaryman! I am inside of hogeTest.txt!!!!"
        do{
            try fileObject.writeToFile(docDir+"/"+fileName, atomically: true, encoding: NSUTF8StringEncoding)
        }catch{
                print("error: file make failed ")
        }

        // 移動
        do{
            try NSFileManager.defaultManager().moveItemAtPath(docDir+"/"+fileName, toPath: docDir+"/hogeTestTheSecond.txt")
        }catch{
            print("error: file move failed ")
        }
    
        // 削除
        do{
            try NSFileManager.defaultManager().removeItemAtPath(docDir+"/"+fileName)
        }catch{
            print("error: file delete failed ")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}