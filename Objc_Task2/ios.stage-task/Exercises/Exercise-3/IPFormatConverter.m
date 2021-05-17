#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray
{
    if (numbersArray == nil || [numbersArray count] == 0)
    {
        return @"";
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:numbersArray];
    
    while ([array count] > 4) {
        [array removeLastObject];
    }
    
    while ([array count] < 4)
    {
        [array addObject:@0];
    }

    NSString *string = [[array valueForKey:@"description"] componentsJoinedByString:@"."];
    
    
    for (int i = 0; i < [array count]; i++)
    {
        if ([array[i] intValue] > 255)
        {
            string = @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if ([array[i] intValue] < 0)
        {
            string = @"Negative numbers are not valid for input.";
        }
    }
    
    return string;
}

@end
