import Foundation

var greeting = "Hello, playground"
// Task 2.2
let a: Double = 5.5
let b: Double = 8.5
var average: Double {
    return (a + b) / 2
}
print("Average value: \(average) \n")

// Task 2.3
let tuplesNameHuman = (firstName: "Stepan", lastName: "Kharitonov")
print("Full name: \(tuplesNameHuman.firstName) \(tuplesNameHuman.lastName) \n")

// Task 2.4
var firstVariable: Float? = 1.7
var secondVariable: Float?

func unwrappingVariable(optionalVaiable: Float?){
        guard let newVariable = optionalVaiable else {
            print("Variable can't be unwrapped \n")
            return
        }
        print("This is unwrapping variable: \(newVariable) \n")
}

unwrappingVariable(optionalVaiable: firstVariable)
unwrappingVariable(optionalVaiable: secondVariable)

// Task 2.5
func successionFibonachi(numberLastElement: Int) {
    var firstNumber = 1
    var secondNumber = 1
    let iterationsNumber = numberLastElement - 2
    var i = 0
    
    while i < iterationsNumber {
        let sum = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = sum
        i += 1
    }
    print("Number Fibonachi #\(numberLastElement) - is \(secondNumber) \n")
}

successionFibonachi(numberLastElement: 15)

// Task 2.6
let unsortArray: [Int] = [1,4,10,15,2,17,9,5]

func boubleSort(initialArray: [Int]) -> [Int] {
    var newArray = initialArray
    let initialArrayCount = initialArray.count
    for i in 0..<initialArrayCount - 1 {
        for j in 0..<initialArrayCount - i - 1 {
            if newArray[j] > newArray[j + 1] {
                let temp = newArray[j]
                newArray[j] = newArray[j + 1]
                newArray[j + 1] = temp
            }
        }
    }
    return newArray
}

let sortingArray = boubleSort(initialArray: unsortArray)
print("\(sortingArray) \n")

// Task 2.7
let lineString: String = "abc009"

func changingLine(line: String) -> String {
    let splitLine = line.split(separator: "")
    var stringSplitLine: [String] = splitLine.map{
        String($0)
    }
    let n = stringSplitLine.count
    var threeNumber = Int(stringSplitLine[n-1])!
    var twoNumber = Int(stringSplitLine[n-2])!
    var oneNumber = Int(stringSplitLine[n-3])!
    
    if threeNumber == 9 {
        threeNumber = 0
        if twoNumber == 9 {
            twoNumber = 0
            if oneNumber == 9 {
                oneNumber = 0
                twoNumber = 0
                threeNumber = 0
            } else {
                oneNumber += 1
            }
        } else {
            twoNumber += 1
        }
    } else {
        threeNumber += 1
    }

    stringSplitLine[n-1] = String(threeNumber)
    stringSplitLine[n-2] = String(twoNumber)
    stringSplitLine[n-3] = String(oneNumber)
    
    var newLine: String {
        var line: String = ""
        stringSplitLine.forEach {
            line += String($0)
        }
        return line
    }
    return newLine
}

let line2 = changingLine(line: lineString)
print(line2)
