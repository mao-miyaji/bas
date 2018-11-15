//
//  ViewController.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2018/11/09.
//  Copyright © 2018年 mao.miyaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let label = UILabel()
        label.text = "Swift DE 脳トレアプリ"
        label.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        label.textAlignment = .center
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

