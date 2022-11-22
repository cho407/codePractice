func sayHelloTo(_ name: String) -> String {
    return "Hello \(name)!"
}

let sayGreet: (String) -> String = { name in
    return "Hello \(name)!"
}

let speakGreet = sayGreet

let greeting1: String = sayHelloTo("Ned")
print("\(greeting1)")

let greeting2: String = sayGreet("Ned")
print("\(greeting2)")

let greeting3: String = speakGreet("Ned")
print("\(greeting3)")

func sayHelloAfterHi(name: String, sayingFunc: (String) -> String) {
    let message: String = sayingFunc(name)
    print("Hi, and \(message)")
}

sayHelloAfterHi(name: "Park", sayingFunc: speakGreet)
sayHelloAfterHi(name: "Kim") { name in
    return "\(name), nice to meet you!"
}
sayHelloAfterHi(name: "Lee") { name in
    "\(name), nice to meet you!"
}