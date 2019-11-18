import Foundation
import UIKit

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let demo = Demo()
        demo.test()
    }
}

class Demo {
    @objc dynamic func test() {
        print("test")
    }
}
