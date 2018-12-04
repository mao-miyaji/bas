//
//  HomeRouter.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2018/12/04.
//  Copyright (c) 2018年 mao.miyaji. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol HomeRoutingLogic
{
}

protocol HomeDataPassing
{
    var dataStore: HomeDataStore? { get }
}

class HomeRouter: NSObject, HomeRoutingLogic, HomeDataPassing
{
    weak var viewController: HomeViewController?
    var dataStore: HomeDataStore?
    
    // MARK: Routing

    // MARK: Navigation
    
    // MARK: Passing data
    
}
