//
//  ProductCollectionViewCell.swift
// DuoTang
//
//  Created by Dwysen on 16/10/28.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class ProductCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView?
    var nameLabel:UILabel?
    var priceLabel:UILabel?
    var likeBtn:UIButton?
    
    
    var item: DTProductData?{
    
        didSet{
            imageView!.kf_setImageWithURL(NSURL(string: item!.coverImageUrl)!)
            nameLabel!.text = item?.name
            
            priceLabel!.text = "$" + String(item!.price)
            priceLabel?.font = UIFont.systemFontOfSize(16)
            priceLabel?.textColor = DTGlobalRedColor()
            
            likeBtn?.setImage(UIImage(named: "Search_GiftBtn_Default_12x10_"), forState: .Normal)
            likeBtn?.titleLabel?.font = UIFont.systemFontOfSize(18)
            likeBtn!.setTitle("" + String(item!.favoritesCount), forState: .Normal)
            likeBtn?.setTitleColor(UIColor.grayColor(), forState: .Normal)
        
      }
    
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        layer.cornerRadius = 5
        layer.masksToBounds = true
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 160))

        addSubview(imageView!)
        nameLabel = UILabel(frame: CGRectMake(5,170,self.width,40))
        nameLabel?.numberOfLines = 2
        addSubview(nameLabel!)
        priceLabel = UILabel(frame: CGRectMake(5,CGRectGetMaxY(nameLabel!.frame) + 5 ,self.width / 2,20))
        addSubview(priceLabel!)
        likeBtn = UIButton(frame: CGRectMake(self.width - 50, priceLabel!.frame.origin.y,50,20))
        addSubview(likeBtn!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
