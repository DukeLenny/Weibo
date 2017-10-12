//
//  WBTabBarController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/1.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBTabBarController: UITabBarController {
    
    fileprivate lazy var middleButton: UIButton = UIButton.button(imageName: "tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button", highlightedImageName: "tabbar_compose_icon_add_highlighted", highlightedBackgroundImageName: "tabbar_compose_button_highlighted")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setChildViewControllers()
        setMiddleButton()
    }
    
    @objc fileprivate func middleButtonClicked() {
        print("展示出发布微博的界面")
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

extension WBTabBarController {
    fileprivate func setChildViewControllers() {
        let dictionaryArray = [
                                                ["className" : "WBHomeViewController", "title" : "首页", "imageName" : "tabbar_home", "selectedImageName" : "tabbar_home_selected"],
                                                ["className" : "WBMessageViewController", "title" : "消息", "imageName" : "tabbar_message_center", "selectedImageName" : "tabbar_message_center_selected"],
                                                ["className" : "WBBaseViewController"],
                                                ["className" : "WBDiscoverViewController", "title" : "发现", "imageName" : "tabbar_discover", "selectedImageName" : "tabbar_discover_selected"],
                                                ["className" : "WBProfileViewController", "title" : "我", "imageName" : "tabbar_profile", "selectedImageName" : "tabbar_profile_selected"]
                                           ]
        var vcs = [UIViewController]()
        for dictionary in dictionaryArray {
            vcs.append(viewController(dictionary: dictionary))
        }
        
        viewControllers = vcs
    }
    
    /// 根据信息字典得到对应视图控制器
    ///
    /// - Parameter dictionary: 信息字典
    /// - Returns: 视图控制器
    private func viewController(dictionary: [String : String]) -> UIViewController {
        guard let className = dictionary["className"], let title = dictionary["title"], let imageName = dictionary["imageName"], let selectedImageName = dictionary["selectedImageName"], let classType = NSClassFromString(Bundle.main.namespace + "." + className) as? WBBaseViewController.Type else {
            return WBBaseViewController()
        }
        
        let viewController = classType.init()
//        viewController.navigationItem.title = title
        viewController.navItem.title = title
        let nc = WBNavigationController(rootViewController: viewController)
        nc.tabBarItem.title = title
        nc.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        nc.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
        
        nc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : TabBarTintColor], for: .selected)
        nc.tabBarItem.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 12)], for: .normal)
        
        return nc
    }
    
    fileprivate func setMiddleButton() {
        
        tabBar.addSubview(middleButton)
        
        let count = CGFloat(childViewControllers.count)
        let width = tabBar.bounds.width / count - 1.0 // - 1.0是为了盖住容错点
        middleButton.frame = tabBar.bounds.insetBy(dx: 2 * width, dy: 0) // 向内为正，向外为负
        
        middleButton.addTarget(self, action: #selector(middleButtonClicked), for: .touchUpInside)
    }
}
