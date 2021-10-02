let inputField: String = "5633"



let testArray = inputField.map({Int ("\($0)")! })

for (indexA, dataA) in testArray.enumerated() {
    print("indexA:\(indexA)\n dataA:\(dataA)")
}
