import UIKit

class circleViewController: UIViewController {
    
    var buttomViewY:CGFloat?
    var outGroups:[AnyObject]?
    
    /// 懒加载创建 scrollView
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.scrollEnabled = true
        scrollView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        ProgressHUD.show("正在加载")
        
         DTNetworkTool.shareNetworkTool.loadButton { (outGroups) in
            
            self.outGroups = outGroups
            self.setupUI()
            ProgressHUD.dismiss()
        }
  
}

    
    
      
    func setupUI(){
        self.view.backgroundColor = DTColor(240, g: 240, b: 240, a: 1)
        let rightButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(RightBtnClick))
        self.navigationItem.rightBarButtonItem = rightButton
        self.navigationController?.navigationBar.translucent = false
        
        setupTopView()
        
        setupMiddleView()
  
        setupBottomView()
        
    }
    func setupTopView(){
        let headerTopVC = circleHeaderViewController()
        let topView = UIView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 135))
        addChildViewController(headerTopVC)
        topView.addSubview(headerTopVC.view)
        scrollView.addSubview(topView)
    }
    
    func setupMiddleView(){
        let View = UIView()
        View.backgroundColor = UIColor.whiteColor()
        View.width = SCREEN_WIDTH
        View.frame.origin.y = 145
        self.view.addSubview(View)
        let styleLabel = setStyleLabel("品类")
        View.addSubview(styleLabel)
       
            let inGroup = outGroups![0]
        for index in 0 ..< inGroup.count {
           
            let button = setupButton(CGFloat(index),inGroup: inGroup as! [DTChannel] )
            button.addTarget(self, action: #selector(BtnClick), forControlEvents: .TouchUpInside)
            button.tag = (inGroup[index] as! DTChannel).id
            if index == inGroup.count - 1{
                View.height = CGRectGetMaxY(button.frame) + 10
            }
            View.addSubview(button)
            buttomViewY = CGRectGetMaxY(View.frame)
        }
        scrollView.addSubview(View)
    }
    
    func setupBottomView(){
        let View = UIView()
        View.backgroundColor = UIColor.whiteColor()
        View.width = SCREEN_WIDTH
        View.frame.origin.y = buttomViewY! + 10
        self.view.addSubview(View)
        
        let styleLabel = setStyleLabel("风格")
        View.addSubview(styleLabel)
        
        let inGroup = outGroups![1]
        for index in 0 ..< inGroup.count {
            let button = setupButton(CGFloat(index),inGroup: inGroup as! [DTChannel] )
            button.addTarget(self, action: #selector(BtnClick), forControlEvents: .TouchUpInside)
            button.tag = (inGroup[index] as! DTChannel).id
            if index == inGroup.count - 1{
                View.height = CGRectGetMaxY(button.frame) + 10
            }
            View.addSubview(button)
        }
        scrollView.addSubview(View)
        scrollView.contentSize = CGSizeMake(SCREEN_WIDTH, CGRectGetMaxY(View.frame) + 100 )
        view.addSubview(scrollView)
        
    }
    
    func setupButton(index:CGFloat,inGroup:[DTChannel]) -> circleButton{
    let buttonWH = SCREEN_WIDTH / 4
    let button = circleButton(frame: CGRect(x: index % 4 * SCREEN_WIDTH/4 , y: 20, width: buttonWH, height: buttonWH))
        if index > 3 {
        button.frame.origin.y = buttonWH + 20
        }
//        button.layer.cornerRadius = 20
//        button.layer.masksToBounds = true
        
        button.kf_setImageWithURL(NSURL(string: inGroup[Int(index)].iconUrl)!, forState: .Normal)
        button.setTitle(inGroup[Int(index)].name, forState: .Normal)
    
//        button.setImage( UIImage(named: "cd\(index)"), forState: .Normal)
       
        return button
    }

    func BtnClick(sender:UIButton){
      let vc = DTCollectionDetailTableViewController()
          vc.type = "风格品类"
          vc.id = sender.tag
          navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func setStyleLabel(labelName:String) -> UILabel{
        let styleLabel = UILabel(frame: CGRect(x: 5, y: 5, width: SCREEN_WIDTH - 10, height: 10))
 
        styleLabel.text = labelName
        return styleLabel
        
    
    }
 
    func RightBtnClick(){
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}



 