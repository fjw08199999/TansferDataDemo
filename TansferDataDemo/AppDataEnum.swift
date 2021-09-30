//
//  AppDataEnum.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/25.
//

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "遊戲開始，猜猜看吧?"
        case .win:
            return "你贏了！"
        case .lose:
            return "你輸了！"
        case .draw:
            return "平手，再來一次！"
        }
    }
}

