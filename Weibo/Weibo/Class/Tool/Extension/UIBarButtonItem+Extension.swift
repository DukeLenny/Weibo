//
//  UIBarButtonItem+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(title: String = BarButtonItemTitle, titleColor: UIColor = NavigationBarTintColor, font: UIFont = BarButtonItemFont, highlightedTitleColor: UIColor? = NavigationBarHighlightedTintColor, target: Any?, action: Selector, imageName: String? = NavigationBarBackImageName, highlightedImageName: String? = NavigationBarBackHighlightedImageName, horizontalSpace: CGFloat? = nil) {
        let button = UIButton(title: title, titleColor: titleColor, font: font, highlightedTitleColor: highlightedTitleColor, imageName: imageName, highlightedImageName: highlightedImageName, horizontalSpace: horizontalSpace, target: target, action: action)
        self.init(customView: button)
    }
}
