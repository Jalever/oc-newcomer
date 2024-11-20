#import <Foundation/Foundation.h>

#import "Tire.h"
#import "Engine.h"

//@interface Tire: NSObject
//@end
//@implementation Tire
//- (NSString*) description {
//    return @"I am a tire, I last a while.";
//}
//@end
//
//@interface Engine : NSObject
//@end
//@implementation Engine
//- (NSString *) description {
//    return @"I am an engine, Vroom!";
//}
//@end

@interface Car: NSObject {
    Engine *engine;
    Tire *tires[4];
}
- (void) print;
@end;
@implementation Car
- (id) init {
    if(self = [super init]) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return self;
}
- (void) print {
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end

int main(int argc, const char *argv[]) {
    Car *car;
    car = [Car new];
    [car print];
    return 0;
}

