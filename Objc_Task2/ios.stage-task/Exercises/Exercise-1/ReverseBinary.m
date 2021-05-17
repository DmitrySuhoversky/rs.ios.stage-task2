#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n)
{
    UInt8 result = 0;
    const int m = 8;
    for (int i = 0; i < m ; ++i)
    {
         UInt8 b = pow (2, i);
         if(n & b)
         {
             result += pow (2, m-i-1);
         }
     }
     return result;
}

