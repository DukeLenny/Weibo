//
//  UIBarButtonItem+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(title: String, titleColor: UIColor, font: UIFont = UIFont.systemFont(ofSize: 16.0), highlightedTitleColor: UIColor?, target: Any?, action: Selector) {
        let button = UIButton(title: title, titleColor: titleColor, font: font, highlightedTitleColor: highlightedTitleColor)
        button.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: button)
    }
}
