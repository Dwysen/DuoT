
import UIKit

class meVCHeaderView: UIView {
   
    lazy var bgImageView:UIImageView = {
        let bgImageView = UIImageView()
    
        bgImageView.image = UIImage(named: "Me_ProfileBackground")
        
        return bgImageView
    }()
    
    lazy var noticeBtn:UIButton = {
        let noticeBtn = UIButton()
        noticeBtn.setImage(UIImage(named: "Me_message_20x20_"), forState: .Normal)
        return noticeBtn
    }()
    
    /// 懒加载，创建左上角消息按钮
    lazy var settingButton: UIButton = {
        let settingButton = UIButton()
        settingButton.setImage(UIImage(named: "Me_settings_20x20_"), forState: .Normal)
        return settingButton
    }()
    
    /// 懒加载，创建头像按钮
    lazy var iconButton: UIButton = {
        let iconButton = UIButton()
        iconButton.setBackgroundImage(UIImage(named: "Me_AvatarPlaceholder_75x75_"), forState: .Normal)
        iconButton.layer.cornerRadius = iconButton.width * 0.5
        iconButton.layer.masksToBounds = true
        return iconButton
    }()
    
    /// 懒加载，创建昵称标签
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "baibai"
        nameLabel.textColor = UIColor.whiteColor()
        nameLabel.font = UIFont.systemFontOfSize(15.0)
        nameLabel.textAlignment = .Center
        return nameLabel
    }()

    
    override init(frame: CGRect) {
    super.init(frame: frame)

        
        addSubview(bgImageView)
        addSubview(settingButton)
        addSubview(noticeBtn)
        addSubview(iconButton)
        addSubview(nameLabel)
        

        bgImageView.frame = frame
        
        // bgView需覆盖顶部状态栏，状态栏高20
        bgImageView.height = frame.height + 20
        
        noticeBtn.frame = CGRect(x: 0, y: 20, width: 44, height: 44)
        settingButton.frame = CGRect(x: SCREEN_WIDTH - 44, y: 20, width: 44, height: 44)
        iconButton.frame = CGRect(x: SCREEN_WIDTH / 2 - 30, y: 100, width: 60 , height: 60)
        nameLabel.frame = CGRect(x: SCREEN_WIDTH / 2 - 60 , y: 170, width: 120, height: 20)
        
    
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
