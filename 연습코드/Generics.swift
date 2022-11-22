func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var numA: Int = 6
var numB: Int = 3
print("numA: \(numA), numB: \(numB)")

swapTwoValues(&numA, &numB)
print("numA: \(numA), numB: \(numB)")

var strA: String = "One"
var strB: String = "Two"
print("strA: \(strA), strB: \(strB)")

swapTwoValues(&strA, &strB)
print("strA: \(strA), strB: \(strB)")