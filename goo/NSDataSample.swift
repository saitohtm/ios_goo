//
//  NSDataSample.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class NSDataSample: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NSDataSample")
        
        var date:NSDate = NSDate();
        date = NSDate(timeIntervalSinceNow: 60);//１分後
        print(date)
        date = NSDate(timeIntervalSinceNow: 60*60);//１時間
        print(date)
        date = NSDate(timeIntervalSinceNow: 24*60*60);//1日後
        print(date)
        date = NSDate(timeIntervalSinceNow: 7*24*60*60);//一週間後
        print(date)
        date = NSDate(timeIntervalSinceNow: -7*24*60*60);//一週間前
        print(date)

//        let calendar = NSCalendar(identifier: NSGregorianCalendar);//和暦を使いたいときはidentifierにはNSJapaneseCalendarを指定
//        var comps:NSDateComponents? = calendar?.components(NSCalendarUnit.YearCalendarUnit|NSCalendarUnit.MonthCalendarUnit|NSCalendarUnit.DayCalendarUnit|NSCalendarUnit.HourCalendarUnit|NSCalendarUnit.MinuteCalendarUnit|NSCalendarUnit.SecondCalendarUnit,fromDate: date);
//        comps?.day -= 7;//7日前。一週間前。このあたりで日付を調整します。
//        let dateAweekAgo = comps?.date;//現在時刻から一週間前のNSDate

        let today:NSDate = NSDate();
        let date_formatter: NSDateFormatter = NSDateFormatter();
        date_formatter.locale = NSLocale(localeIdentifier: "ja");
        
        let weekdays:Array  = ["", "日", "月", "火", "水", "木", "金", "土"]
        let calendar = NSCalendar.currentCalendar();
        let comps = calendar.components([.Year, .Month, .Day, .Weekday, .Hour, .Minute, .Second, .Nanosecond], fromDate: today);
        
        date_formatter.dateFormat = "yyyy年MM月dd日（\(weekdays[comps.weekday])） HH時mm分ss秒"
        print(date_formatter.stringFromDate(today)) // 2015年10月19日（月） 20時14分14秒
        
        // 日本時間にする
        let now = NSDate() //現在時刻
        print(now) //->2015-09-07 22:52:43 +0000
        
        let df = NSDateFormatter()
        df.timeStyle = .ShortStyle//ここを変更すると出力日付の情報量を変更可能
        df.dateStyle = .ShortStyle//ここを変更すると出力日付の情報量を変更可能
        
        df.locale = NSLocale(localeIdentifier: "en_US")
        print(df.stringFromDate(now)) // -> 9/8/15, 7:52 AM
        
        df.locale = NSLocale(localeIdentifier: "ja_JP")
        print(df.stringFromDate(now)) // -> 2015/09/08 7:52
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}