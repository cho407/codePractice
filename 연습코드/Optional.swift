// var : 변수를 나타냄
// index : 변수의 이름을 정함
// Int : 변수의 타입 - 정수
// 선언만 하면 메모리에 실제 자리를 생성하지 못함 - 따로 해줘야함(할당)
// "손님 태우기 전에는 출발 못합니다"
var index: Int
index = 32

print("\(index)")

// 옵셔널Int타입은 내용이 없어도 일단 간다 (개문발차)
// "손님 없어도 일단 출발할께요!"
var optionalIndex: Int?
optionalIndex = 153

// !로 강제언래핑은 위험하니까 조심스럽게 써야함.
// 웬만하면 쓰지 말 것
// print("\(optionalIndex!)")


// 손님 없는 상태를 매번 따져야 활용 가능함
// 값이 없으면 없는대로 따져서 예외적인 처리 필요
// 이것이 옵셔널 바인딩
// nil은 데이터가 없는 상태를 의미함
if let optionalIndex {
    // optionalIndex가 nil이 아니라 데이터가 실제로 있는 경우
    print("\(optionalIndex)")
} else {
    // nil이면 여기를 실행
    print("optionalIndex는 nil입니다(데이터가 없음)")
}

func myFunction() {
    var myOption: String?
    // myOption = "Hello"
    
    guard myOption != nil else {
        print("myOption이 nil이라서 더 못감")
        return
    }
    
    print("여기까지가 진짜 목표")
}

myFunction()