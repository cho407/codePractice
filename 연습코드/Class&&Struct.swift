class Person {
    public var name: String = "Ned"
    private var nickname: String = "nedpark"
    
    func sayHello() {
        print("Hello, \(name)")
    }
    
    func sayGreeting() {
        print("Hello, \(nickname)")
    }
}

let person: Person = Person()
person.name = "Park"
person.sayHello()

// person.nickname = "Kim"
person.sayGreeting()