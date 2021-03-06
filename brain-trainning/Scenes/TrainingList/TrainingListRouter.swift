//
//  TrainingListRouter.swift
//  brain-trainning
//
//  Created by mao.miyaji on 2019/01/18.
//  Copyright (c) 2019年 mao.miyaji. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol TrainingListRoutingLogic
{
}

protocol TrainingListDataPassing
{
    var dataStore: TrainingListDataStore? { get }
}

class TrainingListRouter: NSObject, TrainingListRoutingLogic, TrainingListDataPassing
{
    weak var viewController: TrainingListViewController?
    var dataStore: TrainingListDataStore?
    
    // MARK: Routing
    
    // MARK: Navigation
    
    // MARK: Passing data
    
}
