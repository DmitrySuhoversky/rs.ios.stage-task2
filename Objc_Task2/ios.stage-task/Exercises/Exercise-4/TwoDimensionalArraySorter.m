#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array
{
    if (array == nil || ![array[0] isKindOfClass:NSArray.class])
    {
        return @[];
    }
    
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    NSMutableArray *stringArray = [[NSMutableArray alloc] init];
    
    for (NSArray *newArray in array)
    {
        for (id element in newArray)
        {
            if ([newArray isKindOfClass:NSNumber.class])
            {
                [numberArray addObject:element];
            }
            else
            {
                [stringArray addObject:element];
            }
        }
    }
    
    NSSortDescriptor *lowestToHighest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    
    if (stringArray.count == 0)
    {
        [numberArray sortUsingDescriptors:[NSArray arrayWithObject:lowestToHighest]];
        return numberArray;
    }
    else if (numberArray.count == 0)
    {
    [   stringArray sortUsingDescriptors:[NSArray arrayWithObject:lowestToHighest]];
        return stringArray;
    }
    
    return [NSArray arrayWithObjects: numberArray, stringArray, nil];
}

@end
