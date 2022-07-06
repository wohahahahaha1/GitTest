//
//  Fraction.m
//  prog5
//
//  Created by BIGO on 2022/7/5.
//

#import "Fraction.h"

static int gCounter; //静态变量

@implementation Fraction
@synthesize numerator, denominator;
-(void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}
//覆写初始化方法
-(Fraction *) initWith: (int) n over: (int) d {
    self = [super init];
    if(self) {
        [self setTo: n over : d];
    }
    return self;
}
-(void) print {
    NSLog(@"%d/%d", numerator, denominator);
}
//约分
-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
//初始化实例的计数
+(Fraction *) allocF {
    extern int gCounter;
    ++gCounter;
    return [Fraction alloc];
}
//返回计数
+(int) count {
    extern int gCounter;
    return gCounter;
}
@end
