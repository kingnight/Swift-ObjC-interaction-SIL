//
//  ViewController.swift
//  interaction
//
//  Created by kai jin on 2019/11/18.
//  Copyright © 2019 kai jin. All rights reserved.
//

import UIKit

class ListData: NSObject, ListDataProtocol{
    
}

class ViewController: BaseViewController<ListData> {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
}

