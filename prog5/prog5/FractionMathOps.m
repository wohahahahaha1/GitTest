//  Fraction类的分类MathOps的实现
//  FractionMathOps.m
//  prog5
//
//  Created by BIGO on 2022/7/5.
//

#import "FractionMathOps.h"

@implementation Fraction (MathOps)
-(Fraction *) add:(Fraction *) f {
    Fraction * res = [[Fraction alloc] init];
    res.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    res.denominator = self.denominator * f.denominator;
    [res reduce];
    return res;
}
-(Fraction *) sub:(Fraction *) f {
    Fraction * res = [[Fraction alloc] init];
    res.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    res.denominator = self.denominator * f.denominator;
    [res reduce];
    return res;
}
-(Fraction *) mul:(Fraction *) f {
    Fraction * res = [[Fraction alloc] init];
    res.numerator = self.numerator * f.numerator;
    res.denominator = self.denominator * f.denominator;
    [res reduce];
    return res;
}
-(Fraction *) div:(Fraction *) f {
    Fraction * res = [[Fraction alloc] init];
    res.numerator = self.numerator * f.denominator;
    res.denominator = self.denominator * f.numerator;
    [res reduce];
    return res;
}
@end
