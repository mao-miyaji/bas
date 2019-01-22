//
//  LoaderView.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2018/12/07.
//  Copyright © 2018年 mao.miyaji. All rights reserved.
//

import UIKit

class LoaderView: UIView
{
    let activityIndicator: UIActivityIndicatorView = {
        let ai = UIActivityIndicatorView(style: .whiteLarge)
        ai.color = UIColor.white
        ai.hidesWhenStopped = false
        ai.translatesAutoresizingMaskIntoConstraints = false
        return ai
    }()

    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    private func setup()
    {
        backgroundColor = UIColor.black
        layer.zPosition = 1000
        alpha = 0
        translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        addSubview(activityIndicator)
  
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

    }

    // MARK: Fade in
    func fadeIn()
    {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
}
