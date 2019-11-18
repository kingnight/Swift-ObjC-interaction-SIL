//
//  BaseViewController.swift
//  interaction
//
//  Created by kai jin on 2019/11/18.
//  Copyright © 2019 kai jin. All rights reserved.
//

import Foundation
import UIKit

protocol ListDataProtocol {
    
}

class BaseViewController<P: ListDataProtocol>:UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tableView: UITableView
    var presenter: P?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        self.view.addSubview(self.tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.tableView = UITableView.init(frame: CGRect.zero, style: .plain)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        self.tableView = UITableView.init(frame: CGRect.zero, style: .plain)
        super.init(coder: coder)
    }
    
    //MARK: UITableViewDataSource
        // cell的个数
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        // UITableViewCell
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellid = "testCellID"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
            if cell==nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
            }
            
            cell?.textLabel?.text = "这个是标题~"
            cell?.detailTextLabel?.text = "这里是内容了油~"
            cell?.imageView?.image = UIImage(named:"Expense_success")
            return cell!
        }
      
    //MARK: UITableViewDelegate
        // 设置cell高度
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 44.0
        }
    
    
//    // 选中cell后执行此方法
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
}
