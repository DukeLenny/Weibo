//
//  WBBaseViewController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/1.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {
    
//    lazy var navigationBar = UINavigationBar() //在iOS11.0之前(不含)正常,之后异常
    lazy var navigationBar = WBNavigationBar()
    lazy var navItem = UINavigationItem()
    
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setProperties()
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK:- 设置viewController的属性
extension WBBaseViewController {
    func setProperties() {
        
    }
}

extension WBBaseViewController {
    func setUI() {
        view.backgroundColor = UIColor.white
        
        
        
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        navigationBar.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: TopBarHeight)
        view.addSubview(navigationBar)
        navigationBar.items = [navItem]
        navigationBar.barTintColor = NavigationBarBarTintColor
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : NavigationBarTintColor]
    }
}

// MARK: - Rotation
extension WBBaseViewController {
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
}
