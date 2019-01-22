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
    let footerMenuView = FooterMenuView()

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

    func setFooterMenu()
    {
        footerMenuView.frame = CGRect(x: 0, y: view.frame.height - footerMenuView.height, width: view.frame.width, height: footerMenuView.height)
        footerMenuView.setup()
        view.addSubview(footerMenuView)
        footerMenuView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        footerMenuView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        footerMenuView.heightAnchor.constraint(equalToConstant: footerMenuView.height)
        footerMenuView.widthAnchor.constraint(equalToConstant: view.frame.width)
    }
    
}
