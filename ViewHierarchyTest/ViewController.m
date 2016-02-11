

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self performSegueWithIdentifier:@"presentModally" sender:self];
}


- (void)dealloc
{
    NSLog(@"deallocated ViewController (root)");
}
@end
