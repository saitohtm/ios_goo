//
//  CustomTableViewCell.swift
//  goo
//
//  Created by TomohikoSaito on 2015/10/28.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit


class CustomTableViewCell: UITableViewCell
{
    var titleLabel = UILabel();
    var contentLabel = UILabel();
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel = UILabel(frame: CGRectMake(10, 2, 300, 15));
        titleLabel.text = "";
        titleLabel.font = UIFont.systemFontOfSize(12)
        self.addSubview(titleLabel);
        
        contentLabel = UILabel(frame: CGRectMake(10, 20, 300, 15));
        contentLabel.text = "";
        contentLabel.font = UIFont.systemFontOfSize(22)
        self.addSubview(contentLabel);
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
}