//
//  ProductViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/28.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var items:[DTProductData]!
    
    weak var collectionView: UICollectionView?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = DTGlobalColor()
     
        DTNetworkTool.shareNetworkTool.loadProductItems { (items) in
            
            self.items = items
            self.setupCollectionView()
            self.collectionView?.reloadData()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

    }
    

    func setupCollectionView(){
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(ProductCollectionViewCell.self, forCellWithReuseIdentifier: "ProductCollectionViewCell")
        self.collectionView = collectionView
        view.addSubview(collectionView)
    
    
    
    
    
    }
   

}

extension ProductViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ProductCollectionViewCell", forIndexPath: indexPath) as! ProductCollectionViewCell
        cell.item = items[indexPath.item]
        return cell
        
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: (SCREENW - 20) / 2, height: 250)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let vc = DTProductDetailViewController()
        vc.pruduct = items[indexPath.item]
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    

}
