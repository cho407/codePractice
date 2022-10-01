import UIKit

protocol Animal {
  var legCount: Int { get set }
  var age: Int { get set }
  var weight: Int { get set }
  func displayAnimalInfos()
}

protocol KoreanCulure {
  var koreanAge: Int { get set }
}

// 동물 구조체를 만들어 줍시다
struct Dog: Animal, KoreanCulure {
  var legCount: Int = 0
  var age: Int = 0
  var weight: Int = 0
  
  // 친구 이름들을 문자열로 여기에 추가해주자
  var friends: [[String: String]] = []

  var koreanAge: Int {
    // 연산프로퍼티를 위한 get, set
    get {
      return age + 1
    }
    set {
      print("한국식 나이로 새로 들어온 값은 \(newValue) 입니다")
      age = newValue - 1
      print("한국식 나이는 잊어버리겠지만, 만나이가 \(age)인 것은 잊지 않겠습니다")
    }
  }

  init(age: Int, legCount: Int, weight: Int) {
    self.age = age
    self.legCount = legCount
    self.weight = weight
  }

  func displayFriends() {
    for friend in friends {
      if let name = friend["name"],
       let age = friend["age"],
       let location = friend["location"] {
        print("--------------------")
        print("이름 : \(name)")
        print("나이 : \(age)")
        print("지역 : \(location)")
      }
    }
  }

  func displayAnimalInfos() {
    print("age:\(age) legCount:\(legCount) weight:\(weight)")
  }
}

var myDog1 = Dog(age: 23, legCount: 4, weight: 321)
myDog1.displayAnimalInfos()

var friend: [String: String] = [
  "name": "종욱",
  "age": "13살",
  "location": "서울"]

myDog1.friends = [ friend ]

myDog1.friends += [
  ["name": "홍길동", "age": "16살", "location": "한양"],
  ["name": "뽀로로", "age": "6살", "location": "눈덮인마을"],
  ["name": "타요", "age": "11살", "location": "차고지"],
]

myDog1.displayFriends()
