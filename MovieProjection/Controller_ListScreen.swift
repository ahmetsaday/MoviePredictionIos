//
//  ViewController.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import Alamofire

class Controller_ListScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let listview = View_Detail(frame: self.view.frame)
        listview.setup(self)
        self.view.addSubview(listview)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"arkaplan.jpg")!).colorWithAlphaComponent(0.30)
        //self.view.isOpaque = false
        
        // Data parsing
        Alamofire.request(.GET, "http://api.androidhive.info/json/movies.json")
            .responseJSON { response in
                
                
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
        
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
        cell.layer.backgroundColor = UIColor.clearColor().CGColor
        
        let image = UIImage(named: "star.png")
        cell.star.image = image
                
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let destination = Controller_DetailScreen() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
}

