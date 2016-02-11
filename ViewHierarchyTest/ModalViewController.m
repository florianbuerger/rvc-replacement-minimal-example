

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
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor yellowColor];
    self.view.window.rootViewController = vc;
}


- (void)dealloc
{
    NSLog(@"deallocated ViewController (modal)");
}

@end
