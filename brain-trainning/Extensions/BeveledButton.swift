//
//  BeveledButton.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2019/01/17.
//  Copyright © 2019年 mao.miyaji. All rights reserved.
//

import UIKit

class BeveledButton: UIButton
{
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    override func draw(_ rect: CGRect)
    {
        let path = getBeveledPath()
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        layer.masksToBounds = true
        layer.mask = mask
        
        let borderShape = CAShapeLayer()
        borderShape.path = path.cgPath
        borderShape.lineWidth = layer.borderWidth
        borderShape.strokeColor = layer.borderColor
        borderShape.fillColor = backgroundColor?.cgColor
        layer.insertSublayer(borderShape, at: 0)
    }
    
    private func getBeveledPath() -> UIBezierPath
    {
        let path = UIBezierPath()
        path.move(x: bounds.minX + 15, y: bounds.minY)
        path.addLines(positions: [
            (x: bounds.maxX - 15, y: bounds.minY),
            (x: bounds.maxX, y: bounds.minY + 15),
            (x: bounds.maxX, y: bounds.maxY - 15),
            (x: bounds.maxX - 15, y: bounds.maxY),
            (x: bounds.minX + 15, y: bounds.maxY),
            (x: bounds.minX, y: bounds.maxY - 15),
            (x: bounds.minX, y: bounds.minY + 15)
        ])
        path.close()
        return path
    }

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView?
    {
        if !getBeveledPath().contains(point) {
            // タッチ領域外
            return nil
        } else {
            return super.hitTest(point, with: event)
        }
    }
}
