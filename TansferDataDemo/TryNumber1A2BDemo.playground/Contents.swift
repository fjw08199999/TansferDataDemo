import UIKit

var arrayNumber: [Int] = []
var answerNumber: [Int] = []
var inputAnswer: [String] = ["2", "6", "7", "4"]

let testNumber: String = "1234"


func getAnswerNumber() {
    
    for i in Range(0...9) {
        arrayNumber.append(i)
    }
    
    arrayNumber.shuffle()
    
    for j in Range(0...3) {
        answerNumber.append(arrayNumber[j])
    }
}

getAnswerNumber()

let testArray = testNumber.map({Int("\($0)")! })

print(testArray)
