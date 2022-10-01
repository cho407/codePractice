import UIKit
//상속
protocol KoreanCulure {
  var koreanAge: Int { get set }
}

// 동물 클래스를 만들어 줍시다
class Animal: KoreanCulure {
  var legCount: Int = 0
  var age: Int = 0
  var weight: Int = 0

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

  func bark() {
    print("짖습니다")
  }

  func eat() {
    print("음식을 먹습니다")
  }

  func displayAnimalInfos() {
    print("age:\(age) legCount:\(legCount) weight:\(weight)")
  }
}

class Cat: Animal {
  var meCount: Int = 0  // 집사는 명 몇인가

  init(age: Int, legCount: Int, weight: Int, meCount: Int) {
    self.meCount = meCount

    // 슈퍼 클래스의 초기화 호출은 보통 아래에 둔다
    super.init(age: age, legCount: legCount, weight: weight)
  }

  override func bark() {
    super.bark()    // 상위의 슈퍼 클래스에서 같은 이름의 메소드가 하는일 부터하고
    print("야옹~~~~!")  // 추가적으로 여기서 오버라이드가 해줄일을 써준다
  }

  override func displayAnimalInfos() {
    super.displayAnimalInfos()
    print("집사는 \(meCount) 명입니다")
  }
}

var myAnimal = Animal(age: 23, legCount: 4, weight: 321)
myAnimal.koreanAge = 10
myAnimal.displayAnimalInfos()

var myCat = Cat(age: 1, legCount: 4, weight: 3, meCount: 2)
myCat.displayAnimalInfos()




