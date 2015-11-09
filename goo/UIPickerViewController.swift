//
//  UIPickerViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UIPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var myUIPicker: UIPickerView = UIPickerView()
    var salarymanArr: NSArray = ["Swiftサラリーマン","漫画サラリーマン","英会話サラリーマン","デザインサラリーマン"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 250.0)
        myUIPicker.delegate = self
        myUIPicker.dataSource = self
        self.view.addSubview(myUIPicker)
    }
    
    //表示列
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //表示個数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return salarymanArr.count
    }
    
    //表示内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return salarymanArr[row] as? String
    }
    
    //選択時
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("列: \(row)")
        print("値: \(salarymanArr[row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
