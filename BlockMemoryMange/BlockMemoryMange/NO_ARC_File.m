/*
 *（1） block不是Object对象，所以对retain无效，要想保留block生命周期，最好通过copy来实现，当然copy后，要记得release。如果不想手动管理，就通过[［[testBlock] copy] autorelease]来管理。
  （2）我们知道一般被block的应用的对象，retainCount会自动加一，为了打破这种 retain circle，可以在对象前加__block，这样block块就不会维护这个对象了
 */

#import "NO_ARC_File.h"
#import "BlockeObj.h"

@interface NO_ARC_File ()

@end

@implementation NO_ARC_File

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    /*
     错误 block会自动加1
     */
    BlockeObj *testA =[[BlockeObj alloc] initBlock:^{
        [testA action];
        [ testA release];
    }];
    
    
    /*
     修改
     */
    __block BlockeObj *testB =[[BlockeObj alloc] initBlock:^{
        [testB action];
        [testB release];
    }];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismiss)];
    [self.view addGestureRecognizer:tap];
}

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
