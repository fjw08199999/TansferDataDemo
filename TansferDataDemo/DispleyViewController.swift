//
//  DispleyViewController.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/25.
//

import UIKit

class DispleyViewController: UIViewController {
    
    var arrayNumber: [Int] = []
    var answerNumber: [Int] = []
    var inputNumber: [Int] = [0, 0, 0, 0]
    var gameTimes: Int = 0
    var aNumber: Int = 0
    var bNumber: Int = 0
    
    
    //產生答案隨機不重複四個數字
    func getAnswerNumber() {
        
        for i in Range(0...9) {
            arrayNumber.append(i)
        }
        arrayNumber.shuffle()
        
        for i in Range(0...3) {
            answerNumber.append(arrayNumber[i])
        }
    }
    
    //抓取InputField文字，並轉換為Int，存於answerNumber內
    func getInputText() {
        
        if let inputFieldText = inputField.text {
            if answerNumber.contains(0) {
                inputNumber = inputFieldText.map({Int("\($0)")! })
                print(inputNumber)
            }
        }
    }
    
    //檢查A得分
    func aNumberCheck() {
        
        for i in 0...3 {
            
            if inputNumber[i] == answerNumber[i] {
                aNumber += 1
            } else if aNumber == 4 {
                print(GameStatus.gameWin.rawValue)
            }
        }
    }
    
    //檢查B得分
    func bNumberCheck() {
        
        for i in 0...3 {
            if answerNumber.contains(inputNumber[i]) && inputNumber[i] != answerNumber[i] {
                bNumber += 1
            }
        }
    }
    
    //更新TextView
    func updateTextViewData() {
        displayListText.text += "\(inputField.text!)\t\(aNumber)A\(bNumber)B\n"
    }
    
    //檢查輸入不得超過四個字
    func checkInputNumberCount() {
        if inputNumber.count > 4 {
            
        }
    }
    
    //檢查輸入一定要是數字
    func checkInputNumberIsNumber() {
        
    }
    
    //遊戲狀態確認
    func gameStatusCheck() {
        if aNumber == 4 {
            showNowLabel.text = GameStatus.gameWin.rawValue
        }
    }
    
    //清除上一次紀錄的A與B數量
    func clearABNumber() {
        aNumber = 0
        bNumber = 0
    }
    
    //Arlt視窗
    func arltMsg() {
        
    }
    
    
    @IBOutlet weak var displayListText: UITextView!
    @IBOutlet weak var showNowLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var sendAnwserButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //產生答案
        getAnswerNumber()
        
        //清除TextView文字
        displayListText.text = ""
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func sendAnwserButton(_ sender: Any) {
        
        aNumber = 0
        bNumber = 0
        getInputText()
        aNumberCheck()
        bNumberCheck()
        updateTextViewData()
        gameStatusCheck()
        
        print(answerNumber)
    }
    
}
