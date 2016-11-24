import UIKit

class meViewController: UIViewController {

    
    
    private lazy var headView: meVCHeaderView = {
        let headView = meVCHeaderView(frame: CGRectMake(0, 0, SCREEN_WIDTH, 200))
    
//        headerView.iconButton.addTarget(self, action: #selector(iconButtonClick), forControlEvents: .TouchUpInside)
//        headerView.messageButton.addTarget(self, action: #selector(messageButtonClick), forControlEvents: .TouchUpInside)
//        headerView.settingButton.addTarget(self, action: #selector(settingButtonClick), forControlEvents: .TouchUpInside)
        return headView
    }()

    
    private lazy var footView: meVCFooterView = {
        let footView = meVCFooterView()
      footView.height = 200
      footView.width = SCREEN_WIDTH
      return footView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableView = UITableView()
        tableView.frame = view.bounds
        tableView.separatorStyle = .None
        tableView.dataSource = self
        tableView.delegate = self
        tableView.scrollEnabled = true
        view.addSubview(tableView)
        
   

        tableView.tableHeaderView = headView
     
        tableView.tableFooterView = footView
    
        
        view.addSubview(headView)
        view.addSubview(footView)
  
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    
   
    
    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = true
    }
    override func viewWillDisappear(animated: Bool) {
        navigationController?.navigationBarHidden = false
    }
    
}


extension meViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        return cell
    }
    
     func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let choiceView = meChoiceView()
        return choiceView
    }

//    func scrollViewDidScroll(scrollView: UIScrollView) {
//        let offsetY = scrollView.contentOffset.y
//        if offsetY < 0 {
//            var tempFrame = headView.bgImageView.frame
//            tempFrame.origin.y = offsetY
//            tempFrame.size.height = 220 - offsetY
//            headView.bgImageView.frame = tempFrame
//        }
//        
//    }




}
