//
//  ViewController.m
//  test
//
//  Created by tag_mac_05 on 14-4-4.
//  Copyright (c) 2014年 ChinaiOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(320, 480);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //    layout.minimumInteritemSpacing = 100;
    layout.footerReferenceSize = CGSizeMake(100, 480);
    layout.minimumLineSpacing = 100;
    
    myCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 320+100, 480) collectionViewLayout:layout];
    myCollectionView.pagingEnabled = YES;
    [myCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    myCollectionView.dataSource = self;
    myCollectionView.delegate = self;
    myCollectionView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:myCollectionView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UICollectionViewDelegateFlowLayout


#pragma mark - UICollectionViewDelegate



#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

@end
