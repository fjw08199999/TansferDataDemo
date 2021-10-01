//
//  AppFunction.swift
//  TansferDataDemo
//
//  Created by fred fu on 2021/9/27.
//


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

//檢查A得分
func aNumberCheck() {
    
    if inputNumber.count == 4 {
        for i in 0...3 {
            if aNumber != 4 {
                if inputNumber[i] == answerNumber[i] {
                    aNumber += 1
                }
            } else {
                return
            }
        }
    }
}

//檢查B得分
func bNumberCheck() {
    if inputNumber.count == 4 {
        for i in 0...3 {
            if answerNumber.contains(inputNumber[i]) && inputNumber[i] != answerNumber[i] {
                bNumber += 1
            }
        }
    }
}
