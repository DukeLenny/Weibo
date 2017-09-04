//
//  Bundle+Extension.swift
//  命名空间&反射机制
//
//  Created by LiDinggui on 2017/8/31.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import Foundation

extension Bundle {
//    func namespace() -> String? {
////        return Bundle.main.infoDictionary?["CFBundleName"] as? String
//        return infoDictionary?["CFBundleName"] as? String
//    }
    
    // 在OC中，没有参数有返回值的方法可以使用"."来调用，例如：[string copy] = string.copy
    // 在Swift中，没有参数有返回值的方法可以用计算型属性代替，更简洁易读
    var namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
