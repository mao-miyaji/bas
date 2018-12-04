//
//  GradientLayer.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2018/12/04.
//  Copyright © 2018年 mao.miyaji. All rights reserved.
//

import UIKit

class GradientLayer: CALayer
{
    public var colors = [UIColor.white.cgColor, UIColor.white.cgColor]

    required override init()
    {
        super.init()
        needsDisplayOnBoundsChange = true
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    required override init(layer: Any)
    {
        super.init(layer: layer)
    }
    
    override func draw(in ctx: CGContext)
    {
        ctx.saveGState()
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let locations: [CGFloat] = [0.0, 1.0]
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: locations)
        let center = CGPoint(x: bounds.width / 2.0, y: bounds.height / 2.0)
        let radius = min(bounds.width + 100, bounds.height + 100)
        ctx.drawRadialGradient(gradient!, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: radius, options: CGGradientDrawingOptions(rawValue: 0))

        ctx.restoreGState()
    }
    
}
