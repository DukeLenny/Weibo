//
//  UIColor+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgba(_ red: UInt8, _ green: UInt8, _ blue: UInt8, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: alpha)
    }
    
    static func rgb(_ red: UInt8, _ green: UInt8, _ blue: UInt8) -> UIColor {
        return rgba(red, green, blue, 1.0)
    }
    
    static func random(_ alpha: CGFloat = 1) -> UIColor {
        return rgba(UInt8(arc4random() % 256), UInt8(arc4random() % 256), UInt8(arc4random() % 256), alpha)
    }
    
    static func hex(_ hex: Int, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0, green: CGFloat((hex & 0x00FF00) >> 8) / 255.0, blue: CGFloat(hex & 0x0000FF) / 255.0, alpha: alpha)
    }
}
