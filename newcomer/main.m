#import <Foundation/Foundation.h>

#import "AllWeatherRadial.h"
#import "Car.h"
#import "Engine.h"
#import "Slant6.h"
#import "Tire.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileManager *manager;
        manager = [NSFileManager defaultManager];
        NSString *home;
        home = [@"/Users/friedrichchen/photo/wallpaper" stringByExpandingTildeInPath];
        
        NSMutableArray *files;
        files = [NSMutableArray arrayWithCapacity:42];
        
        for(NSString *filename in [manager enumeratorAtPath:home]) {
            if([[filename pathExtension] isEqualTo:@"jpg"]) {
                [files addObject:filename];
            }
        }
        
        for(NSString *filename in files) {
            NSLog(@"%@", filename);
        }
        
        return 0;
    }
}
