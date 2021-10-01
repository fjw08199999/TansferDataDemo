var inputTextData: Array<Int> = [1,2,3,3]


func inputCheck(inputText: [Int]) -> Bool {
    for (indexA, dataA) in inputText.enumerated() {
        for (indexB, dataB) in inputText.enumerated() {
            if indexA == indexB { continue }
            if dataA == dataB { return true }
        }
    }
    return false
}


inputCheck(inputText: inputTextData)
