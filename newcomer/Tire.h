#import <Foundation/Foundation.h>

@interface Tire: NSObject
@end
@implementation Tire
- (NSString *) description {
    return @"I am a tire, I last a while.";
}
@end

@interface Engine: NSObject
@end
@implementation Engine
- (NSString *) description {
    return @"I am a Engine.Vroom!";
}
@end

//@interface Car: NSObject {
//    Engine *engine;
//    Tire *tires[4];
//}
//- (void) print;
//@end
@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (Engine *)engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int)index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void) print;
@end
@implementation Car
- (Engine *) engine {
    return engine;
}
- (void) setEngine: (Engine *) newEngine {
    engine = newEngine;
}
- (void)setTire: (Tire *) tire atIndex: (int) index {
    if(index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex: ", index);
        exit(1);
    }
    tires[index] = tire;
}
- (Tire *) tireAtIndex: (int) index {
    if(index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex", index);
        exit(1);
    }
    return tires[index];
}
- (void) print {
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end
//@implementation Car
//- (id) init {
//    if(self = [super init]) {
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return self;
//}
//- (void) print {
//    NSLog(@"%@", engine);
//    NSLog(@"%@", tires[0]);
//    NSLog(@"%@", tires[1]);
//    NSLog(@"%@", tires[2]);
//    NSLog(@"%@", tires[3]);
//}
//@end

int main(int argc, const char *argv[]) {
    Car *car = [Car new];
    Engine *engine = [Engine new];
    [car setEnine: engine];
    
    for(int i = 0;i < 4;i++) {
        Tire *tire = [Tire new];
        [car setTire:tire atIndex:1];
    }
    
    [car print];
    return 0;
}


