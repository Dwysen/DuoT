//
//  DTCollectionDetailTableViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/24.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

let collectionTableCellID = "DTCollectionTableViewCell"

import UIKit

class DTCollectionDetailTableViewController: UITableViewController {

    var id:Int?
    var type = ""
    var posts = [DTCollecitonPost]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: String(DTCollectionTableViewCell), bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: collectionTableCellID)
        tableView.rowHeight = 150
        tableView.separatorStyle = .None
        ProgressHUD.show("正在加载")
        if type == "风格品类"{
        DTNetworkTool.shareNetworkTool.loadChannels(id!) { (collectionposts) in
                self.posts = collectionposts
                self.tableView.reloadData()
                ProgressHUD.dismiss()
            }
            
        } else {
        DTNetworkTool.shareNetworkTool.loadCollectionPost(id!) { (collectionposts) in
            self.posts = collectionposts
            self.tableView.reloadData()
            ProgressHUD.dismiss()
        }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return posts.count ?? 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DTCollectionTableViewCell", forIndexPath: indexPath) as! DTCollectionTableViewCell
        
            cell.selectionStyle = .None
            cell.post = posts[indexPath.row]
       
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = DTPostDetailViewController()
        vc.post = posts[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
 

  
}
}


