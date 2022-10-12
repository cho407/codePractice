//objective-c code
// #import <Foundation/Foundation.h>

// // 윤곽 클래스 정의
// @interface Shape : NSObject {
//     CGFloat area;   // 넓이
// }

// - (void)printArea;
// - (void)calculateArea;
// @end

// @implementation Shape
// - (void)printArea {
//     NSLog(@"The area is %f", area);
// }

// - (void)calculateArea {
//     // 아직 모르겠음
// }
// @end


// // 윤곽을 상속받은 정사각형 클래스 정의
// @interface Square : Shape {
//     CGFloat length; // 정사각형 변의 길이
// }

// - (id)initWithSide:(CGFloat)side;
// - (void)calculateArea;
// @end

// @implementation Square
// - (id)initWithSide:(CGFloat)side {
//     self = [super init];
//     length = side;
//     return self;
// }

// - (void)calculateArea {
//     area = length * length;
// }
// @end

// // 윤곽을 상속받은 직사각형 클래스 정의
// @interface Rectangle : Shape {
//     CGFloat length;
//     CGFloat breadth;
// }

// - (id)initWithLength:(CGFloat)length andBreadth:(CGFloat)breadth;
// @end

// @implementation Rectangle
// - (id)initWithLength:(CGFloat)length andBreadth:(CGFloat)breadth {
//     self = [super init];
//     self->length = length;
//     self->breadth = breadth;
//     return self;
// }

// - (void)calculateArea {
//     area = length * breadth;
// }
// @end

// int main(int argc, const char * argv[]) {
//     @autoreleasepool {
//         Shape *shape = [[Shape alloc] init];
//         [shape printArea];
        
//         Square *square = [[Square alloc] initWithSide:10.0];
//         [square calculateArea];
//         [square printArea];
        
//         Rectangle *rectangle = [[Rectangle alloc] initWithLength:10.0 andBreadth:5.0];
//         [rectangle calculateArea];
//         [rectangle printArea];
//     }
//     return 0;
// }

import Foundation

class Shape {
    var area: CGFloat = 0.0
    
    func printArea() {
        print("The area is \(area)")
    }
    
    func calculateArea() {
        // 아직 모르겠음
    }
}

class Square: Shape {
    var length: CGFloat = 0.0
    
    init(side: CGFloat) {
        super.init()
        length = side
    }
    
    override func calculateArea() {
        super.calculateArea()
        area = length * length
    }
}

class Rectangle: Shape {
    var length: CGFloat = 0.0
    var breadth: CGFloat = 0.0
    
    init(length: CGFloat, breadth: CGFloat) {
        super.init()
        self.length = length
        self.breadth = breadth
    }
    
    override func calculateArea() {
        super.calculateArea()
        area = length * breadth
    }
}

let square: Square = Square(side: 10.0)
square.calculateArea()
square.printArea()

let rectangle: Rectangle = Rectangle(length: 10.0, breadth: 5.0)
rectangle.calculateArea()
rectangle.printArea() 