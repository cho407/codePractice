import UIKit

// 캡처값 예제
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal: Int = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

// 생성된 반환되는 함수는 runningTotal = 0,amount = 10으로 캡쳐되어 작동
let increFuncTen = makeIncrementer(forIncrement: 10)

// 생성된 반환되는 함수는 runningTotal = 0,amount = 7로 캡쳐되어 작동
let increFuncSeven = makeIncrementer(forIncrement: 7)

print("\(increFuncTen())") // 0 + 10 = 10
print("\(increFuncSeven())") // 0 + 7 = 7

print("\(increFuncTen())") // 10 + 10 = 20
print("\(increFuncSeven())") // 7 + 7 = 14

print("\(increFuncTen())") // 20 + 10 = 30
print("\(increFuncSeven())") // 14 + 7 = 21
