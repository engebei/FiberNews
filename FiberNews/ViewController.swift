//
//  ViewController.swift
//  FiberNews
//
//  Created by zhubo on 16/3/14.
//  Copyright © 2016年 zhubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tabbarVC = TabBarViewController()
//        self.navigationController?.pushViewController(tabbarVC, animated: true)
    }
    override func viewDidAppear(animated: Bool) {
        self.presentViewController(TabBarViewController(), animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

