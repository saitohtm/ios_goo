//
//  LocalNotificationViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/04.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class LocalNotificationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("LocalNotificationViewController")
        
    }

    //ApDelegate.swifの起動時に呼ばれる関数
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //Notification登録前のおまじない。テストの為、現在のノーティフケーションを削除します
        UIApplication.sharedApplication().cancelAllLocalNotifications();
        
        //Notification登録前のおまじない。これがないとpermissionエラーが発生するので必要です。
        
        let types : UIUserNotificationType =
        [UIUserNotificationType.Badge,
            UIUserNotificationType.Alert,
            UIUserNotificationType.Sound]
        let settins : UIUserNotificationSettings = UIUserNotificationSettings(forTypes: types, categories: nil)
        
        application.registerUserNotificationSettings(settins)

        //以下で登録処理
        var notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5);//５秒後
        notification.timeZone = NSTimeZone.defaultTimeZone()
        notification.alertBody = "swift-saralymanからの通知だよ"
        notification.alertAction = "OK"
        notification.soundName = UILocalNotificationDefaultSoundName
        UIApplication.sharedApplication().scheduleLocalNotification(notification);
        
        return true
    }
       //上記のNotificatioを５秒後に受け取る関数
    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        
        let alert = UIAlertView();
        alert.title = "受け取りました";
        alert.message = notification.alertBody;
        alert.addButtonWithTitle(notification.alertAction!);
        alert.show();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}