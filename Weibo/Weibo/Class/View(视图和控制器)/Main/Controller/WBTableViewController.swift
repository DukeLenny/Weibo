//
//  WBTableViewController.swift
//  Weibo
//
//  Created by LiDinggui on 2017/10/13.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class WBTableViewController: WBBaseViewController {

    var tableView: UITableView = UITableView()
    
    var tableViewStyle: UITableViewStyle = .plain
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension WBTableViewController {
    override func setProperties() {
        super.setProperties()
        
        tableViewStyle = .plain
    }
}

extension WBTableViewController {
    override func setUI() {
        super.setUI()
        
        setTableView()
        
        setAutomaticallyAdjustsScrollViewInsetsFalse(scrollView: tableView, vc: self)
    }
    
    //FIXME: 子类需要重写这个方法，需要调super,主要做tableView的register操作
    func setTableView() {
        let tableView = UITableView(frame: view.bounds, style: tableViewStyle)
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        if tableViewStyle == .plain {
            tableView.tableFooterView = UIView()
        }
//        view.addSubview(tableView)
        view.insertSubview(tableView, belowSubview: navigationBar)
        self.tableView = tableView
        
        tableView.estimatedRowHeight = 0.0;
        tableView.estimatedSectionHeaderHeight = 0.0;
        tableView.estimatedSectionFooterHeight = 0.0;
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        tableView.contentInset = UIEdgeInsets(top: TopBarHeight, left: 0, bottom: 0, right: 0)
    }
}

//FIXME: 子类需要重写这两个方法,不需要调super
extension WBTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
