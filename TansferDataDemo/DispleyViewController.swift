//
//  DispleyViewController.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/25.
//

import UIKit

class DispleyViewController: UIViewController {
    
    
    //抓取InputField文字，並轉換為Int，存於inputNumber內
    func getInputText() {
        
        if let inputFieldText = inputField.text {
            inputNumber = inputFieldText.map({Int("\($0)")! })
        } else {
            return
        }
    }
    
    
    //更新TextView 紀錄猜過的歷史紀錄
    func updateTextViewData(inputFieldText: String) {
        if inputNumber.count == 4 {
            displayListText.text += "\(inputFieldText)\t\(aNumber)A\(bNumber)B\n"
        }
    }
    
    //檢查InputField不能為Nil
    func nilCheck() {
        if inputField.text?.isEmpty == true {
            alertMsg(title: "Error", message: "輸入不能為空白")
        }
    }
    
    //檢查輸入不得超過四個字以及只能是數字
    func checkInputNumberCount(inputFieldText: String) {
        if inputFieldText.count != 4 {
            alertMsg(title: "Error", message: "只能輸入四個字")
        }
    }
    
    //檢查輸入一定要是數字
    func checkInputNumberIsNumber(inputFieldText: String) {
        let inputPre = NSPredicate(format: "SELF MATCHES %@", "^[0-9]{4}$") // 必須為 4 個 0~9 數字
        let bool = inputPre.evaluate(with: inputFieldText) // 符合的話為 true
        if bool == false {
            alertMsg(title: "Error", message: "要輸入0~9數字")
        }
    }
    
    //檢查是否輸入重複數字
        func repeatNumber(inputNumber: [Int]) {
            if inputNumber.count == 4 {
                for (indexA, dataA) in inputNumber.enumerated() {
                    for (indexB, dataB) in inputNumber.enumerated() {
                        if indexA == indexB { continue }
                        if dataA == dataB {
                            alertMsg(title: "Error", message: "不能輸入重複的數字")
                            return }
                    }
                }
            }
        }
    
    //遊戲狀態確認
    func gameStatusCheck() {
        if aNumber == 4 {
            alertMsg(title: "SystemMsg", message: "恭喜答對了")
        }
    }
    
    
    //Arlt視窗
    func alertMsg(title: String, message: String) {
        let alertUIViewController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertUIViewController.addAction(alertAction)
        present(alertUIViewController, animated: true)
    }
    
    //點擊空白處收鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
        
        //檢查inputField格式
        //檢查i是否為空值
        nilCheck()
        
        //檢查是否輸入四個字
        checkInputNumberCount(inputFieldText: inputField.text!)
        
        //檢查是否輸入為數字
        checkInputNumberIsNumber(inputFieldText: inputField.text!)
        
//        //抓取FieldText值
//        getInputText()
//
//        //檢查是否輸入重複數字
//        repeatNumber(inputNumber: inputNumber)
//
//        //比對答案 幾A幾B
//        aNumberCheck()
//        bNumberCheck()
//
//        //更新TextView
//        updateTextViewData(inputFieldText: inputField.text!)
//
//        //判斷是否全部猜對
//        gameStatusCheck()
//
//        //重置A B 計數
//        aNumber = 0
//        bNumber = 0
        
        
        
        print(answerNumber)
        print(inputNumber)
    }
    
}
