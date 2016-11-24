//
//  DTProductBottomTableViewCell.swift
// DuoTang
//
//  Created by Dwysen on 16/10/31.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit
import Kingfisher

class DTProductBottomTableViewCell: UITableViewCell {

    var comment:DTComment?{
        didSet{
            avatarImageView.kf_setImageWithURL(NSURL(string: (comment!.user.avatarUrl)!)!)
            nameLabel.text = comment?.user.nickname
            commentLabel.text = comment?.content
            
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateStyle = .ShortStyle
            dateFormatter.timeStyle = .ShortStyle
            timeLabel.text = dateFormatter.stringFromDate(NSDate())
        
        }
    
    }
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.layer.cornerRadius = 20
        timeLabel.font = UIFont.systemFontOfSize(10)
        timeLabel.textColor = UIColor.grayColor()
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
