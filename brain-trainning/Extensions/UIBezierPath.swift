//
//  UIBezierPath.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2019/01/17.
//  Copyright © 2019年 mao.miyaji. All rights reserved.
//

import UIKit

extension UIBezierPath
{
    func move(x: CGFloat, y: CGFloat)
    {
        move(to: CGPoint(x: x, y: y))
    }
    
    func addLine(x: CGFloat, y: CGFloat)
    {
        addLine(to: CGPoint(x: x, y: y))
    }
    
    func addLines(positions: [(x: CGFloat, y: CGFloat)])
    {
        positions.forEach { position in
            addLine(x: position.x, y: position.y)
        }
    }
}
