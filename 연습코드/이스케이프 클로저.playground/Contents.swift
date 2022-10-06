import UIKit

// 이스케이프 클로저 (Escaping Closures) 예제
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosures(completionHandler: @escaping () -> Void ) {
    completionHandlers.append(completionHandler)
}


func someFunctionWithNonescapingClosures(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 0
    func doSomething() {
        someFunctionWithEscapingClosures { () -> Void in
            print("Hello")
            self.x = 100
        }
        someFunctionWithNonescapingClosures { () -> Void in
            print("World")
            x = 200
        }
    }
}

let instance = SomeClass()
instance.doSomething()
print("someFunctionWithNonescapingClosures - x : \(instance.x)") // 당연히 200

if let completionHandler = completionHandlers.first {
    completionHandler()
    print("someFunctionWithEscapingClosures - x : \(instance.x)") // 200이 아니라 100
}
