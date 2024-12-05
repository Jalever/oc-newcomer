#import <Foundation/Foundation.h>

#import "AllWeatherRadial.h"
#import "Car.h"
#import "Engine.h"
#import "Slant6.h"
#import "Tire.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool
    {
        NSFileManager *manager;
        manager = [NSFileManager defaultManager];
        
        
        NSString *home;
        home = [@"~" stringByExpandingTildeInPath];
        
        NSDirectoryEnumerator *direnum;
        direnum = [manager enumeratorAtPath:home];
        
        NSMutableArray *files;
        files = [NSMutableArray arrayWithCapacity:42];
        
        NSString *filename;
        while(filename = [direnum nextObject]) {
            if([[filename pathExtension] isEqualTo: @"jpg"]) {
                [files addObject: filename];
            }
        }
        
        NSEnumerator *filenum;
        filenum = [files objectEnumerator];
        
        while(filename = [filenum nextObject]) {
            NSLog(@"%@", filename);
        }
    }
    
    return 0;
}
