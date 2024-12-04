```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    if (self.myString == nil) {
        self.myString = [[NSString alloc] initWithString:@"Hello"];
    }
    // ... some code ...
}
@end
```
This corrected version only allocates a new string if `myString` is currently `nil`.  This prevents the repeated allocation and subsequent memory leak.  Alternatively, consider using a method that directly modifies the existing string rather than creating a new one each time if appropriate for the application.