//
//  ViewController.swift
//  Test13
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //耗时操作
//        bigData();
        
    
        

    }
    func bigData()  {
        let queue:DispatchQueue = DispatchQueue.init(label: "queue");
        queue.async {
            for index in 1...9999999 {
                
                print("\(index)---\(Thread.current)");
            }
        }

    }

}

