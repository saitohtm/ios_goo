//
//  NSUserDefaultUtil.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/06.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import Foundation

struct NSUserDefaultUtil {
    static func getValue(key:String)->AnyObject{
        let obj: AnyObject! = NSUserDefaults.standardUserDefaults().objectForKey(key);
        if (obj != nil){
            return obj;
        }else{
            return "";
        }
    }
    static func setValue(value:AnyObject,key:String){
        NSUserDefaults.standardUserDefaults().setObject(value, forKey:key);
        NSUserDefaults.standardUserDefaults().synchronize();
    }
}
