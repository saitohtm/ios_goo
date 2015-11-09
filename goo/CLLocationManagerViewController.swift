//
//  CLLocationManagerViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/02.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit
import CoreLocation

class CLLocationManagerViewController: UIViewController,CLLocationManagerDelegate {
    
    var myLocationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CLLocationManagerViewController")
        
        // 現在地を取得します
        myLocationManager = CLLocationManager()
        myLocationManager.delegate = self

        // 承認されていない場合はここで認証ダイアログを表示します.
        let status = CLLocationManager.authorizationStatus()
        if(status == CLAuthorizationStatus.NotDetermined) {
            print("didChangeAuthorizationStatus:\(status)");
            self.myLocationManager.requestAlwaysAuthorization()
        }
        
        myLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        myLocationManager.distanceFilter = 100
        myLocationManager.startUpdatingLocation()
    }

    // 現状のステータス状態を表示します
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        print("didChangeAuthorizationStatus");
        var statusStr = "";
        switch (status) {
        case .NotDetermined:        statusStr = "NotDetermined"
        case .Restricted:           statusStr = "Restricted"
        case .Denied:               statusStr = "Denied"
        case .Authorized:           statusStr = "Authorized"
        case .AuthorizedWhenInUse:  statusStr = "AuthorizedWhenInUse"
        }
        print(" CLAuthorizationStatus: \(statusStr)")
    }
    
    // 位置情報取得成功時に呼ばれます
    func locationManager(manager: CLLocationManager,didUpdateLocations locations: [CLLocation]){
        print("緯度：\(manager.location!.coordinate.latitude)")
        print("経度：\(manager.location!.coordinate.longitude)")
    }
    
    // 位置情報取得失敗時に呼ばれます
    func locationManager(manager: CLLocationManager,didFailWithError error: NSError){
        print("error")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}