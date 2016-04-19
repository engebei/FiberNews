//
//  HomeViewController.swift
//  FiberNews
//
//  Created by zhubo on 16/3/14.
//  Copyright © 2016年 zhubo. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var collectionView:UICollectionView?
    let images = [["home-new","home-allhelp","home-offer"],["home-purchase","home-supply",
                  "home-employ"],["home-app","home-survey","home-activity","home-used"]]
    let titles = [["新闻","大家帮","报价"],["求购","供应","招聘"],["行业APP","问卷调查","活动","二手"]]
    let colors = [["fd853f","3faef1","fc5c75"],["fc5c75","9d6be2","42c848"],["2cc08f","fd853f","fc5c75","42c848"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.setupCollectionView()
        
    }
    
    //MARK: - geter/seter
    func setupCollectionView () {
        let folwLayout = UICollectionViewFlowLayout()
        
        self.collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: folwLayout)
        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self
        self.collectionView?.backgroundColor = UIColor.whiteColor()
        self.collectionView?.registerClass(HomeCell.self, forCellWithReuseIdentifier: "HomeCell")
        self.view.addSubview(self.collectionView!)
    }
    
    //MARK: - UICollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 2 {
            return 4
        } else {
            return 3;
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("HomeCell", forIndexPath: indexPath) as! HomeCell
        
        cell.icon.image = UIImage(named: images[indexPath.section][indexPath.item])
        cell.title.text = titles[indexPath.section][indexPath.item]
        if indexPath.section == 2 {
            cell.title.font = UIFont.systemFontOfSize(12)
        }
        cell.backgroundColor = UIColor(hexString: colors[indexPath.section][indexPath.item])
        
        
        return cell;
    }
    
    //MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if indexPath.section == 2 {
            return CGSizeMake((self.view.bounds.width - 100)/4, (self.view.bounds.width - 100)/4);
        }
        return CGSizeMake((self.view.bounds.width - 80)/3, (self.view.bounds.width - 80)/3);
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 20, 0, 20)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
