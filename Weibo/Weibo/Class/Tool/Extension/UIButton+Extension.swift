//
//  UIButton+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/27.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension UIButton {
    // 创建一个没有title而有backgroundImage和image的button
    // 还需设置：
    // 1.addSubview
    // 2.frame
    // 3.addTarget
    class func button(imageName: String, backgroundImageName: String, highlightedImageName: String? = nil, highlightedBackgroundImageName: String? = nil, selectedImageName: String? = nil, selectedBackgroundImageName: String? = nil) -> UIButton {
        guard let image = UIImage(named: imageName), let backgroundImage = UIImage(named: backgroundImageName) else {
            return UIButton()
        }
        
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.clear
        button.bounds = CGRect(x: 0, y: 0, width: backgroundImage.size.width, height: backgroundImage.size.height)
        button.setImage(image, for: .normal)
        button.setBackgroundImage(backgroundImage, for: .normal)
        
        if let highlightedImageName = highlightedImageName {
            button.setImage(UIImage(named: highlightedImageName), for: .highlighted)
        }
        if let highlightedBackgroundImageName = highlightedBackgroundImageName {
            button.setBackgroundImage(UIImage(named: highlightedBackgroundImageName), for: .highlighted)
        }
        if let selectedImageName = selectedImageName {
            button.setImage(UIImage(named: selectedImageName), for: .selected)
        }
        if let selectedBackgroundImageName = selectedBackgroundImageName {
            button.setBackgroundImage(UIImage(named: selectedBackgroundImageName), for: .selected)
        }
        
        return button
    }
    
    // 实例化一个没有backgroundImage和image而有title的button
    // 还需设置：
    // 1.addSubview
    // 2.frame
    // 3.addTarget
    convenience init(title: String, titleColor: UIColor, font: UIFont, highlightedTitle: String? = nil, highlightedTitleColor: UIColor? = nil, selectedTitle: String? = nil, selectedTitleColor: UIColor? = nil, bgColor: UIColor = UIColor.clear) {
        self.init(type: .custom)
        
        backgroundColor = bgColor
        setTitleColor(titleColor, for: .normal)
        
        if let highlightedTitleColor = highlightedTitleColor {
            setTitleColor(highlightedTitleColor, for: .highlighted)
        }
        if let selectedTitleColor = selectedTitleColor {
            setTitleColor(selectedTitleColor, for: .selected)
        }
        
        titleLabel?.font = font
        setTitle(title, for: .normal)
        
        if let highlightedTitle = highlightedTitle {
            setTitle(highlightedTitle, for: .highlighted)
        }
        if let selectedTitle = selectedTitle {
            setTitle(selectedTitle, for: .selected)
        }
        
        sizeToFit()
        
    }
    
    // 实例化一个没有backgroundImage而有title和image的button
    // 还需设置：
    // 1.addSubview
    // 2.frame
    // 3.addTarget
    convenience init(title: String, titleColor: UIColor, font: UIFont, highlightedTitle: String? = nil, highlightedTitleColor: UIColor? = nil, selectedTitle: String? = nil, selectedTitleColor: UIColor? = nil, bgColor: UIColor = UIColor.clear, imageName: String, highlightedImageName: String? = nil, selectedImageName: String? = nil, horizontalSpace: CGFloat? = nil) {
        self.init(title: title, titleColor: titleColor, font: font, highlightedTitle: highlightedTitle, highlightedTitleColor: highlightedTitleColor, selectedTitle: selectedTitle, selectedTitleColor: selectedTitleColor, bgColor: bgColor, imageName: imageName, highlightedImageName: highlightedImageName, selectedImageName: selectedImageName)
        // 2个问题
    }
}
