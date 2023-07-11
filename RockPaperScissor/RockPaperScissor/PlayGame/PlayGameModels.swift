//
//  PlayGameModels.swift
//  RockPaperScissor
//
//  Created by Ornthita.Eae on 5/7/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates
//
//  Type "usecase" for some magic!

struct PlayGameScene {
    enum Choices: Int, CaseIterable{
        case rock = 0
        case paper = 1
        case scissors = 2
        
        //func getPlay() -> Choices

    }
    
    struct PlayGame {
        struct Request {
            let sign: Int
            
        }
        struct Response {
            let botScore: Int
            let playerScore: Int
            let botProcess: String
            let playerProcess: String
        }
        struct ViewModel {
            var result: String
        }
    }
    
    struct Playable {
        var choice: Choices?
        var score: Int = 0
        var process: String = ""
    }
}
