#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car {
    Tire *tires[4];
    Engine *engine;
}

- (Engine *) engine {
    return engine;
}
- (void) setEngine: (Engine *) newEngine {
    engine = newEngine;
}

- (Tire *) tireAtIndex: (int)index {
    if(index < 0 || index > 3) {
        NSLog(@"bad index");
    }
    return tires[index];
}
- (void) setTire: (Tire *) tire  atIndex: (int) index {
    tires[index] = tire;
}

- (void) print {
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
    NSLog(@"%@", engine);
}
@end
