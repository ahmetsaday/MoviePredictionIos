//
//  Controller_DetailScreen.swift
//  MovieProjection
//
//  Created by osx on 5.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit

class Controller_DetailScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var headerView : View_DetailScreen?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView = View_DetailScreen(frame: self.view.frame)
        headerView!.setCreateUI(self)
        self.view.addSubview(headerView!)
        
        
    }
    

    // Tableview Delegate
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            
            print("sec 1")
            return 1
        }
        
        if(section == 1){
        
            print("sec 2")
            return 5
            
        }
        
        return 0
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print("index path", indexPath.section)
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell_Header", forIndexPath: indexPath) as! Cell_Header
        
        if(indexPath.section == 0){
            cell.lbl_test.text = "secion 0"
            cell.backgroundColor = UIColor.yellowColor()
        }
        
        if(indexPath.section == 1){
        cell.lbl_test.text = "secion 1"
            cell.backgroundColor = UIColor.blueColor()
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let destination = Controller_DetailScreen() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
}
