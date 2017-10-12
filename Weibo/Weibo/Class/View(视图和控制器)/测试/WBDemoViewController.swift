//
//  WBDemoViewController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/9/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBDemoViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc fileprivate func barButtonClicked() {
        print(#function)
        
        let vc = WBDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
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

extension WBDemoViewController {
    override func setUI() {
        super.setUI()
        
        view.backgroundColor = UIColor.random()
        
        navItem.title = "第\(navigationController?.childViewControllers.count ?? 0)个"
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", target: self, action: #selector(barButtonClicked), imageName: nil, highlightedImageName: nil)
        navItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", target: self, action: #selector(barButtonClicked), imageName: nil, highlightedImageName: nil)
    }
}
