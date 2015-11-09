//
//  UITextView.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/30.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit
import Foundation

public class myTextView: UITextView {
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer);
    }
    
    public override func drawRect(rect: CGRect) {
 //       var transform :NSAffineTransform;
    }
}
