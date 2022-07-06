//
//  main.m
//  prog5
//
//  Created by BIGO on 2022/7/5.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"count: %d", [Fraction count]);
        Fraction * x = [[Fraction allocF] initWith: 2 over: 3];
        Fraction * y = [[Fraction allocF] initWith: 3 over: 4];
        [x print];
        [y print];
        NSLog(@"count: %d", [Fraction count]);
        Fraction * res;
        res = [x add: y];
        [res print];
        res = [x sub: y];
        [res print];
        res = [x mul: y];
        [res print];
        res = [x div: y];
        [res print];
    }
    return 0;
}
