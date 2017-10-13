//
//  WBNavigationController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/1.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationBar.isHidden = true
    }
    
    @objc fileprivate func popVC() {
        popViewController(animated: true)
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

extension WBNavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            
            var title = BarButtonItemTitle
            if childViewControllers.count == 1 {
                if let rootViewController = childViewControllers.first as? WBBaseViewController {
                    title = rootViewController.navItem.title ?? BarButtonItemTitle
                }
            }
            if let viewController = viewController as? WBBaseViewController {
                viewController.navItem.leftBarButtonItem = UIBarButtonItem(title: title, target: self, action: #selector(popVC))
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
}

// MARK: - Rotation
extension WBNavigationController {
    override var shouldAutorotate: Bool {
        if let topViewController = topViewController {
            return topViewController.shouldAutorotate
        }
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if let topViewController = topViewController {
            return topViewController.supportedInterfaceOrientations
        }
        return .portrait
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        if let topViewController = topViewController {
            return topViewController.preferredInterfaceOrientationForPresentation
        }
        return .portrait
    }
}
