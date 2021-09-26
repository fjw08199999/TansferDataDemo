//
//  AppDataEnum.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/25.
//

import Foundation

enum GameStatus: String {
    case gameStart = "遊戲開始"
    case gameOver = "遊戲結束"
    case gameTie = "遊戲平手"
    case gameWin = "恭喜！猜對瞜！"
    
    func status() -> () {
        
        switch self {
        case .gameStart:
            return
        case .gameOver:
            return
        case .gameTie:
            return
        case .gameWin:
            return
        }
    }
}

