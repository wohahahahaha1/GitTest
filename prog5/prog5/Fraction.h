//
//  Fraction.h
//  prog5
//
//  Created by BIGO on 2022/7/5.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) initWith : (int) n over: (int) d;
-(void) reduce;
-(void) print;
+(Fraction *) allocF;
+(int) count;
@end

NS_ASSUME_NONNULL_END
