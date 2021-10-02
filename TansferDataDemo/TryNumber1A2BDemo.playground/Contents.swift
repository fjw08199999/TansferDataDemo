var arrayNumber: Array<Int> = []
var answerNumber: Array<Int> = []

func getAnswerNumber() {
    
    for i in Range(0...9) {
        arrayNumber.append(i)
    }
    
    arrayNumber = arrayNumber.shuffled()
    
    for j in Range(0...3) {
        answerNumber.append(arrayNumber[j])
    }
    
    print(answerNumber)
}


getAnswerNumber()
