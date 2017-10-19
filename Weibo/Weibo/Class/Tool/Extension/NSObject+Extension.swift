//
//  NSObject+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/10/19.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension NSObject {
    class func propertyList() -> [String] {
        var outCount: UInt32 = 0
        
        let list = class_copyPropertyList(self, &outCount)
        
        print("对象的属性有 \(outCount) 个!")
        
        var array: [String] = []
        
        for i in 0..<Int(outCount) {
            
            guard let p = list?[i], let cStr = property_getName(p), let str = String(utf8String: cStr) else {
                continue
            }
            
            print(str)
            array.append(str)
        }
        
        if let list = list {
            free(list)
        }
        
        return array
    }
}
