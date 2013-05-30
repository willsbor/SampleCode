
- (CGFloat) checkInputMethod2
{
    
    CGFloat keyBoardHeight = 0;
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        for (UIView *view in [window subviews]) {
            if ([[NSString stringWithFormat:@"%@", [view class]] isEqualToString:@"UIPeripheralHostView"] == YES ) {
                //NSLog(@"%@ - %@", [view class], NSStringFromCGRect([view frame]));
                CGRect tmp = [view frame];
                keyBoardHeight = tmp.size.height;
                if (keyBoardHeight == 252  ///< for iphone 單方向 直的
                    || keyBoardHeight == 198) {    ///< for iphone 單方向 橫的
                    _inputMethodModify = 36;
                } else {
                    _inputMethodModify = 0;
                }
                break;
            }
        }
    }
    
    return keyBoardHeight;
}



