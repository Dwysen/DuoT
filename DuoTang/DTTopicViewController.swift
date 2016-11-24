//
//  testViewController.swift
// DuoTang
//
//  Created by Dwysen on 16/10/27.
//  Copyright © 2016年 Dwysen. All rights reserved.
//

import UIKit

class DTTopicViewController: UITableViewController {
    var id = Int()
    var item = [DTItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        refreshControl = UIRefreshControl()
        refreshControl?.beginRefreshing()
        refreshControl?.addTarget(self, action: #selector(loadHomeData), forControlEvents: .ValueChanged)
        
        loadHomeData()
        
      
        
        
        
       
    }

    func loadHomeData(){
       
        DTNetworkTool.shareNetworkTool.loadHomeItem(id) { (item) in
            self.item = item
            self.tableView.reloadData()
            self.refreshControl?.endRefreshing()
        }

    
    }
    func setupTableView(){
       tableView.rowHeight = 150
   
       tableView.separatorStyle = .None
       tableView.contentInset = UIEdgeInsets(top: kTitlesViewH + kTitlesViewY, left: 0, bottom: tabBarController!.tabBar.height, right: 0)
       
        let nib = UINib(nibName: String(DTHomeTableViewCell), bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "DTHomeTableViewCell")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DTHomeTableViewCell", forIndexPath: indexPath) as? DTHomeTableViewCell
        cell!.item = item[indexPath.row]
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = DTPostDetailViewController()
        vc.item = item[indexPath.row]
        vc.type = "HomeItem"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
