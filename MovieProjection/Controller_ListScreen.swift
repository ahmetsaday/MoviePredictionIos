//
//  ViewController.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit

class Controller_ListScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let listview = View_Detail(frame: self.view.frame)
        listview.setup(self)
        self.view.addSubview(listview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Tableview Delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell_ListScreen", forIndexPath: indexPath) as! Cell_ListScreen
        
       // cell.textLabel!.text = "A cell"

        
        return cell
    }
    
    
    
    
}
