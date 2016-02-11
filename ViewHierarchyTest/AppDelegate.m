#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)replaceRoot
{
    // Replace won't work if there is modally presented view controller active
    // You HAVE to dismiss it first
    [self.window.rootViewController dismissViewControllerAnimated:NO completion:^{
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor yellowColor];
        self.window.rootViewController = vc;
    }];
}

@end
