//
//  ViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/16.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Labelを作成.
        print("ViewController")
        
        LoadingProxy.set(self); //表示する親をセット
        LoadingProxy.on();//ローディング表示。非表示にする場合はoff
        
        //以下でUIStepperを作成します
        let higesoriStepper: UIStepper = UIStepper()
        higesoriStepper.center = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        higesoriStepper.addTarget(self, action: "onStepperChange:", forControlEvents: UIControlEvents.ValueChanged)
        higesoriStepper.minimumValue = 5//最小値。ヒゲは完全に剃れません。ゼロにはならない。
        higesoriStepper.maximumValue = 100000//ヒゲはほぼ無限です。
        higesoriStepper.value = 30//今朝の８時、朝剃ったヒゲ５は今は３０程度に成長しました
        higesoriStepper.stepValue = 5//ヒゲ剃り人剃りはだいたい５程度です
        self.view.addSubview(higesoriStepper)
    }

    internal func onStepperChange(stepper: UIStepper){
        print("ヒゲ個数：\(stepper.value)");
        if (stepper.value == 5){
            print("これ以上それません");
        }else if (stepper.value >= 100){
            print("Error:そろそろ髭剃りの時期です。");
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // タッチイベント処理の遷移
    override func touchesBegan(touches: Set<UITouch>,withEvent event: UIEvent?){
        print("touchesBeganが呼ばれました");
    }
    override func touchesMoved(touches: Set<UITouch>,withEvent event: UIEvent?){
        print("touchesMovedが呼ばれました");
    }
    override func touchesEnded(touches: Set<UITouch>,withEvent event: UIEvent?){
        print("touchesEndedが呼ばれました");
    }

    override func viewDidAppear(animated: Bool) {
        let tutorial = TutorialViewController();
        if (tutorial.isTutorialDone()){
            // 画像を複数設定すればチュートリアルはOK Assetsにすべきかもしれない
            //
            tutorial.pageImagesArr = ["iphone6.jpg","iphone6.jpg","iphone6.jpg"];
            self.presentViewController(tutorial, animated: true, completion: nil)
        }
    }

}

