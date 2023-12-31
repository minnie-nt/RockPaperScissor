//
//  PlayGameConfigurator.swift
//  RockPaperScissor
//
//  Created by Ornthita.Eae on 5/7/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension PlayGameInteractor: PlayGameViewControllerOutput, PlayGameRouterDataSource, PlayGameRouterDataDestination {
}

extension PlayGamePresenter: PlayGameInteractorOutput {
}

class PlayGameConfigurator {
    // MARK: Object lifecycle
    
    static let sharedInstance = PlayGameConfigurator()
    
    private init() {}
    
    // MARK: Configuration
    
    func configure(viewController: PlayGameViewController) {
        
        let presenter = PlayGamePresenter()
        presenter.output = viewController
        
        let interactor = PlayGameInteractor()
        interactor.output = presenter
        
        let router = PlayGameRouter(viewController: viewController, dataSource: interactor, dataDestination: interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}
