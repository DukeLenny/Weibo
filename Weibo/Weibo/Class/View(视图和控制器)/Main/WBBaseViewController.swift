//
//  WBBaseViewController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/1.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {
    
    var navigationBarHeight: CGFloat {
        guard let navigationController = navigationController else {
            return StatusBarHeight
        }
        return StatusBarHeight + navigationController.navigationBar.bounds.size.height
    }
    
    lazy var navigationBar = UINavigationBar()
    lazy var navItem = UINavigationItem()
    
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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

extension WBBaseViewController {
    func setUI() {
        view.backgroundColor = UIColor.white
        
        navigationBar.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: navigationBarHeight)
        view.addSubview(navigationBar)
        navigationBar.items = [navItem]
        navigationBar.barTintColor = NavigationBarBarTintColor
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : NavigationBarTintColor]
    }
}
