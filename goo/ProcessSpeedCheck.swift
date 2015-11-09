//
//  ProcessSpeedCheck.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/06.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import Foundation

struct ProcessSpeedCheckUtil {
    
    static var total = 0;
    static var startTime:Double = 0;
    static var interval:Double = 0;
    
    static func start(name:String = ""){
        startTime = 0;
        startTime = self.currentTime();
        print("ProcessSpeedCheck started <\(name)>");
        
    }
    static func end(){
        interval = currentTime() - startTime;
        print("ProcessSpeedCheck ended \(interval)ms");
    }
    
    static func currentTime() -> Double {
        return ((CFAbsoluteTimeGetCurrent() as Double) * 1000.0);
    }
}