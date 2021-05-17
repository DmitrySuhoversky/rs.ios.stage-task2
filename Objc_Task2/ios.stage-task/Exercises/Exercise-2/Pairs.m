#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number
{
    
    int sum = 0;
    
    for (int i = 0; i < [array count] -1; i++)
    {
        for (int j = 0; j < [array count] -1; j++)
        {
            if (array[j+1].intValue - array[i].intValue == number.intValue)
            {
            
            sum += 1;
            
            }
        }
    }
    return  sum;
}

@end
