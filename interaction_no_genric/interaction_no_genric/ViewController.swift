//
//  ViewController.swift
//  interaction_no_genric
//
//  Created by kai jin on 2019/11/18.
//  Copyright © 2019 kai jin. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
}

