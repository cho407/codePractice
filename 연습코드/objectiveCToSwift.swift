 import Foundation
 //objective-c code
// #import <Foundation/Foundation.h>

// // Person 클래스 정의
// @interface Person : NSObject {
//     NSString *personName;
//     NSInteger personAge;
// }

// - (id)initWithName:(NSString *)name andAge:(NSInteger)age;
// - (void)print;cs
// @end

// @implementation Person

// - (id)initWithName:(NSString *)name andAge:(NSInteger)age {
//     self = [super init];
    
//     personName = name;
//     personAge = age;
    
//     return self;
// }

// - (void)print {
//     NSLog(@"Name: %@", personName);
//     NSLog(@"Age: %ld", personAge);
// }

// @end

// // Person을 상속받은 Employee 클래스 정의
// @interface Employee : Person {
//     NSString *employeeEducation;
// }

// - (id)initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education;
// - (void)print;

// @end

// @implementation Employee

// - (id)initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education {
//     self = [super initWithName:name andAge:age];
//     employeeEducation = education;
//     return self;
// }

// - (void)print {
//     [super print];
//     NSLog(@"Educaiton: %@", employeeEducation);
// }

// @end


// int main(int argc, const char * argv[]) {
//     @autoreleasepool {

//         Person *person = [[Person alloc] initWithName:@"Ned" andAge:13];
//         [person print];
        
//         Employee *employee = [[Employee alloc] initWithName:@"홍길동" andAge:15 andEducation:@"서당"];
//         [employee print];
//     }
//     return 0;
// }

class Person {
    var name: String = ""
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func descriptionPerson() {
        print("name: \(name)")
        print("age: \(age)")
    }
}

class Employee: Person {
    var education: String = ""
    
    init(name: String, age: Int, education: String) {
        super.init(name: name, age: age)
        self.education = education
    }
    
    override func descriptionPerson() {
        super.descriptionPerson()
        print("education: \(education)")
    }
}

let person: Person = Person(name: "ned", age: 13)
person.descriptionPerson()

let employee: Employee = Employee(name: "홍길동", age: 15, education: "서당")
employee.descriptionPerson()