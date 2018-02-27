//
//  WBNavigationBar.swift
//  Weibo
//
//  Created by LiDinggui on 2018/2/27.
//  Copyright © 2018年 DAQSoft. All rights reserved.
//

import UIKit

class WBNavigationBar: UINavigationBar {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if #available(iOS 11.0, *) {
            for subview in subviews {
                let stringFromClass = NSStringFromClass(subview.classForCoder)
                if stringFromClass.contains("UIBarBackground") {
                    subview.frame = bounds
                } else if stringFromClass.contains("UINavigationBarContentView") {
                    subview.frame = CGRect(x: 0, y: StatusBarHeight, width: bounds.size.width, height: navigationBarHeight())
                }
            }
        }
    }

}
