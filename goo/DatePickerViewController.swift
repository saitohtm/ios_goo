//
//  DatePickerViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/25.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    let dp:UIDatePicker = UIDatePicker();
    
    lazy var dateFormatter: NSDateFormatter = {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .ShortStyle
        
        return dateFormatter
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dp.datePickerMode = UIDatePickerMode.Time;
        self.dp.addTarget(self, action: "updateDatePickerLabel", forControlEvents: .ValueChanged);
        self.view.addSubview(self.dp);
    }
    func updateDatePickerLabel(){
        let datestr = dateFormatter.stringFromDate(self.dp.date);
        print(datestr);//Oct 23, 2014, 7:58 PMな風に出力されます。
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}