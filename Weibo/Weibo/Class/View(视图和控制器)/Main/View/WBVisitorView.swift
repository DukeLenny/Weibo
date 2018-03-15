//
//  WBVisitorView.swift
//  Weibo
//
//  Created by LiDinggui on 2018/3/9.
//  Copyright © 2018年 DAQSoft. All rights reserved.
//

import UIKit

class WBVisitorView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    fileprivate lazy var logoImageView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_smallicon"))
    fileprivate lazy var houseImageView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_house"))
    fileprivate lazy var textLabel: UILabel = UILabel(textColor: UIColor.darkGray, text: "关注一些人,回到这里你会发现有很多很多很多很多很多很多很多很多的惊喜", textAlignment: .center, numberOfLines: 0)
    fileprivate lazy var registerButton: UIButton = UIButton(title: "注册", titleColor: UIColor.orange, font: UIFont.systemFont(ofSize: 16.0), highlightedTitleColor: UIColor.darkGray, bgColor: <#T##UIColor#>, imageName: <#T##String?#>, highlightedImageName: <#T##String?#>, selectedImageName: <#T##String?#>, horizontalSpace: <#T##CGFloat?#>)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension WBVisitorView {
    fileprivate func setUI() {
        backgroundColor = UIColor.hex(0xEDEDED)
        
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: logoImageView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: logoImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: -60.0))
        
        addSubview(houseImageView)
        houseImageView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: houseImageView, attribute: .centerX, relatedBy: .equal, toItem: logoImageView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: houseImageView, attribute: .centerY, relatedBy: .equal, toItem: logoImageView, attribute: .centerY, multiplier: 1.0, constant: 0.0))
        
        let spacing: CGFloat = 20.0
        
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: textLabel, attribute: .centerX, relatedBy: .equal, toItem: logoImageView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: textLabel, attribute: .top, relatedBy: .equal, toItem: logoImageView, attribute: .bottom, multiplier: 1.0, constant: spacing))
        addConstraint(NSLayoutConstraint(item: textLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 236.0))
        
        
    }
}
