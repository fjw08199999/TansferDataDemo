//
//  AppDataEnum.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/25.
//


var arrayNumber: Array<Int> = []
var answerNumber: Array<Int> = []
var inputNumber: Array<Int> = []
var gameTimes: Int = 0
var aNumber: Int = 0
var bNumber: Int = 0


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

enum SystemMsg {
    case errorText
    case systemMsgText
    case checkNilText
    case checkNumberCountText
    case checkIsNumberText
    case checkrepeatNumberText
    case okText
    
    var msg: String {
        switch self {
        case .errorText:
            return "Error"
        case .systemMsgText:
            return "SystemMsg"
        case .checkNilText:
            return "輸入視窗不能為空白"
        case .checkNumberCountText:
            return "請輸入四個數字"
        case .checkIsNumberText:
            return "請輸入數字"
        case .checkrepeatNumberText:
            return "不能輸入重複的數字"
        case .okText:
            return "OK"
        }
    }
}

