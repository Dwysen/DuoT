//
//  circleHeaderViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/9/21.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class circleHeaderViewController: UIViewController {
    
    var collecitons = [DTCollection]()
    var collectionView : UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    
        DTNetworkTool.shareNetworkTool.loadCollection { (collections) in
        self.collecitons = collections

        self.collectionView?.reloadData()
        }

    }
    
    func setupUI(){
        let headerTopView = NSBundle.mainBundle().loadNibNamed("circleTopView", owner: nil, options: nil).first as! circleTopView
        headerTopView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height:40 )
        headerTopView.delegate = self
        view.addSubview(headerTopView)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Horizontal
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 40, width: SCREEN_WIDTH, height: 95), collectionViewLayout: flowLayout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.backgroundColor = UIColor.whiteColor()
        let cellNib = UINib(nibName: "circleTopCollectionCell", bundle: nil)
        collectionView?.registerNib(cellNib, forCellWithReuseIdentifier: "circleTopCollectionCell")
        view.addSubview(collectionView!)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
    

}

extension circleHeaderViewController:DidClickSeeAllBtnProtocol{
    
    
    func didCilckSeeAllBtn(btn: UIButton) {
        print(2)
        
    }
}

extension circleHeaderViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return collecitons.count 
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("circleTopCollectionCell", forIndexPath: indexPath) as! circleTopCollectionCell
            cell.collection = collecitons[indexPath.item]
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let vc = DTCollectionDetailTableViewController()
        vc.id = collecitons[indexPath.item].id
        navigationController?.pushViewController(vc , animated: true)
        
    }
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 150, height: 75)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}

