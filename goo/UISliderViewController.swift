//
//  UISliderViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class UISliderViewController: UIViewController{
    
    override func viewDidLoad() {
        
        //スライダ作成
        let mySlider = UISlider(frame: CGRectMake(0, 0, 200, 30))
        mySlider.layer.position = CGPointMake(self.view.frame.midX, 100)
        mySlider.backgroundColor = UIColor.whiteColor()
        mySlider.minimumValue = 0
        mySlider.maximumValue = 1
        mySlider.value = 0.5
        mySlider.maximumTrackTintColor = UIColor.greenColor()
        mySlider.minimumTrackTintColor = UIColor.blackColor()
        mySlider.addTarget(self, action: "onChangeValueMySlider:", forControlEvents: UIControlEvents.ValueChanged)
        
        self.view.addSubview(mySlider)
        
    }
    //メモリが変わったときに呼ばれます
    func onChangeValueMySlider(sender : UISlider){
        print(sender.value);
    }
    
}
