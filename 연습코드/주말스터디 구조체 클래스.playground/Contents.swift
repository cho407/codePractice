import UIKit

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

var myAnimal1 = Animal(age: 23, legCount: 4, weight: 321)
myAnimal1.koreanAge = 10
myAnimal1.displayAnimalInfos()

// 참조타입 복사를 알아봅시다
// myAnimal2는 myAnimal1의 값을 꺼내서 복사해 새로운 myAnimal2를 만들지 않고
// 기존 myAnimal1이 있는 데이터 위치를 똑같이 바라보고 건드리게 된다
// 사실상 myAnimal1과 2는 같은 데이터를 사용하는 다른 이름일 뿐이다
var myAnimal2: Animal = myAnimal1
myAnimal2.koreanAge = 29

print("myAnimal 2 ------")
myAnimal2.displayAnimalInfos()
// myAnimal 2 ------
// age:28 legCount:4 weight:321

print("myAnimal 1 ------")
myAnimal1.displayAnimalInfos()
// myAnimal 1 ------
// age:28 legCount:4 weight:321
