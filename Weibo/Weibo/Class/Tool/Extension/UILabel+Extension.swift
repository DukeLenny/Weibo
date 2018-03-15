//
//  UILabel+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2018/3/15.
//  Copyright © 2018年 DAQSoft. All rights reserved.
//

import UIKit

extension UILabel {
    //实例化一个有文本的label
    //还需设置:
    //1.addSubview
    //2.frame
    convenience init(backgroundColor: UIColor = UIColor.clear, textColor: UIColor = UIColor.black, font: UIFont = UIFont.systemFont(ofSize: 14.0), text: String = "", textAlignment: NSTextAlignment = .natural, numberOfLines: Int = 1) {
        self.init()
        
        self.backgroundColor = backgroundColor
        
        self.textColor = textColor
        
        self.font = font
        
        self.text = text
        
        self.textAlignment = textAlignment
        
        self.numberOfLines = numberOfLines
        
        sizeToFit()
    }
}
