#import "AppDelegate.h"
#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self replaceRootViewController];
    // At this point the view hierarchy contains the modally presented
    // view controllers view and the new root view controllers view
}


- (void)replaceRootViewController
{
    // Replacing the root shouldn't be done by a view controller that is active inside the
    // current view hierarchy
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate replaceRoot];
}


- (void)dealloc
{
    NSLog(@"deallocated ViewController (modal)");
}

@end
