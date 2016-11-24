//
//  DTProductTopView.swift
// DuoTang
//
//  Created by Dwysen on 16/10/31.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class DTProductDetailTopView: UIView {
 
    var product:DTProductData?{
        didSet{
            pageControl.numberOfPages = (product?.imageUrls.count)!
            nameLabel.text = product?.name
            priceLabel.text = "$" + (product?.price)!
            describeLabel.text = product!.descriptionField
     
      
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(collectionView)
        
        addSubview(nameLabel)
        
        addSubview(priceLabel)
    
        addSubview(describeLabel)
        
        addSubview(pageControl)
        pageControl.center.x = self.center.x
        pageControl.center.y = 350
        
        
    }
    
    private lazy var collectionView:UICollectionView = {
    let collectionView = UICollectionView(frame:  CGRect(x: 0, y: 0, width: SCREENW, height: 375), collectionViewLayout: DTDetailLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(ProductDetailCollectionViewCell.self, forCellWithReuseIdentifier: "ProductDetailCollectionViewCell")
        return collectionView
    }()
    
    private lazy var nameLabel:UILabel = {
       let label = UILabel(frame: CGRect(x: 5, y: 385, width: SCREENW, height: 30))
       
        return label
    }()
    
    private lazy var priceLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 5, y: 425, width: SCREENW, height: 30))

        label.textColor = UIColor.redColor()
        return label
    }()
    
    private lazy var describeLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 5, y: 465, width: SCREENW, height: 45))
        label.numberOfLines = 0
        label.textColor = UIColor.grayColor()
    
        return label
    }()
    
    private lazy var pageControl:UIPageControl = {
      let pageControl = UIPageControl()
        
        
          pageControl.pageIndicatorTintColor = UIColor.grayColor()
          pageControl.currentPageIndicatorTintColor = UIColor.whiteColor()
      
          return pageControl
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}


extension DTProductDetailTopView:UICollectionViewDataSource,UICollectionViewDelegate {

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ProductDetailCollectionViewCell", forIndexPath: indexPath) as! ProductDetailCollectionViewCell
           cell.imgUrl = product?.imageUrls[indexPath.item]
        return cell
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
    let x = scrollView.contentOffset.x
    let page = x / SCREENW
        pageControl.currentPage = Int(page)
    }


}

private class DTDetailLayout:UICollectionViewFlowLayout {
    
    private override func prepareLayout() {
        itemSize = CGSizeMake(SCREENW, 375)
        minimumLineSpacing = 0
        minimumInteritemSpacing = 5
        scrollDirection = .Horizontal
        
        collectionView?.showsVerticalScrollIndicator = false
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.bounces = false
        collectionView?.pagingEnabled = true
    }



}
