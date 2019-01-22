//
//  FooterMenuView.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2019/01/18.
//  Copyright © 2019年 mao.miyaji. All rights reserved.
//

import UIKit

class FooterMenuView: UIView
{
    let height: CGFloat = 106.0
    let cellMargin: CGFloat = 20.0

    let menuButtons: [BeveledButton] = [
        {
            let button = BeveledButton()
            button.setImage(UIImage(named: "icon_home"), for: .normal)
            button.setTitle("Home", for: .normal)
            button.accessibilityIdentifier = "homeButton"
            return button
        }(),
        {
            let button = BeveledButton()
            button.setImage(UIImage(named: "icon_brain"), for: .normal)
            button.setTitle("Training", for: .normal)
            button.accessibilityIdentifier = "TrainingButton"
            return button
        }(),
        {
            let button = BeveledButton()
            button.setImage(UIImage(named: "icon_chart"), for: .normal)
            button.setTitle("Score", for: .normal)
            button.accessibilityIdentifier = "ScoreButton"
            return button
        }()
    ]
    
    func setup()
    {
        layer.backgroundColor = UIColor(named: "basGray")?.cgColor

        let menuButton = menuButtons[1]
        let buttonWidth = (frame.width - cellMargin * CGFloat(menuButtons.count + 1)) / CGFloat(menuButtons.count)
        let buttonHeight = height - cellMargin * 2
        menuButton.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight)
        menuButton.backgroundColor = UIColor(named: "basDarkGray")
        menuButton.borderColor = UIColor(named: "basGreen")!
        menuButton.borderWidth = 2.0
        menuButton.setTitleColor(UIColor.white, for: .normal)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)

        // 縦並び表示
        menuButton.imageView?.contentMode = .scaleAspectFit
        menuButton.contentVerticalAlignment = .fill
        let contentMargin: CGFloat = 10.0
        let contentSpace: CGFloat = 5.0
        menuButton.imageEdgeInsets = UIEdgeInsets(top: -(menuButton.titleLabel?.bounds.size.height ?? 0) + contentMargin + contentSpace, left: 0, bottom: contentMargin + contentSpace, right: -(menuButton.titleLabel?.bounds.size.width ?? 0))
        menuButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: -(menuButton.imageView?.bounds.size.width ?? 0), bottom: -(menuButton.imageView?.bounds.size.height ?? 0) + contentMargin, right: 0)

        menuButton.addTarget(self, action: #selector(tapMenuButton), for: .touchUpInside)
        addSubview(menuButton)

        menuButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        menuButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
    }

    @objc func tapMenuButton(_ sender: UIButton)
    {
        print("tapMenu")
    }
}
