//
//  ResultInteractor.swift
//  RockPaperScissor
//
//  Created by Ornthita.Eae on 5/7/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

protocol ResultInteractorInput {
    func showResult()
}

protocol ResultInteractorOutput {
    func showResult(_ result: String)
}

protocol ResultDataSource {
    
}

protocol ResultDataDestination {
    var result: String {get set}
}

class ResultInteractor: ResultInteractorInput, ResultDataSource, ResultDataDestination {
    
    var output: ResultInteractorOutput?
    var result: String = ""
    
    // MARK: Business logic
    func showResult() {
        output?.showResult(result)
    }

}
