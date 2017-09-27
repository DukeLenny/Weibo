//
//  UIButton+Extension.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/27.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

extension UIButton {
    class func button(imageName: String, backgroundImageName: String) -> UIButton {
        guard let image = UIImage(named: imageName), let backgroundImage = UIImage(named: backgroundImageName) else {
            return UIButton()
        }
        
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.clear
        button.bounds = CGRect(x: 0, y: 0, width: backgroundImage.size.width, height: backgroundImage.size.height)
        button.setImage(image, for: .normal)
        button.setBackgroundImage(backgroundImage, for: .normal)
        return button
    }
}
