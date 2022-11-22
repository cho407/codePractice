//switch 구문
enum School {
    case fontend
    case backend
    case app
    case AI
}

let myChoice: School = .app

switch myChoice {
case .fontend:
    print("Hello Frontend School!")
case .backend:
    print("Hello Backend School!")
case .app:
    print("Hello App School!")
case .AI:
    print("Hello AI School!")
default:
    print("Hello everyone!")
}