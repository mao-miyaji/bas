//
//  BaseViewController.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2018/12/04.
//  Copyright © 2018年 mao.miyaji. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController
{
    let gradientLayer = GradientLayer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor(red: 221 / 255.0, green: 221 / 255.0, blue: 221 / 255.0, alpha: 1).cgColor]
        view.layer.addSublayer(gradientLayer)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
    {
        super.viewWillTransition(to: size, with: coordinator)
        gradientLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
