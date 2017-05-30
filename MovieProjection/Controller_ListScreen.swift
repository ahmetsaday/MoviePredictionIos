//
//  ViewController.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SDWebImage

class Controller_ListScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var customView : View_Detail!
    var arr = [Film]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Movie Prediction"
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationBackGroundColor(UIColor.blackColor(), tintC: UIColor.whiteColor())
        
        
        //--
        customView = View_Detail(frame: self.view.frame)
        customView.setup(self)
        self.view.addSubview(customView)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"arkaplan.jpg")!).colorWithAlphaComponent(0.30)

        getData()
        
    }
    
    func navigationBackGroundColor(backGColor:UIColor,tintC:UIColor){
        
        self.navigationController!.navigationBar.tintColor = tintC
        self.navigationController!.navigationBar.barTintColor = backGColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
    }


    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.customView.tableView.reloadData()  // ...and it is also visible here.
    }
    
    
    
    func getData(){
    
        RequestConnection.sharedInstance().connectionGet("", parameter: "?skip=1&limit=20", complateBlock: { (json) in

            Modal.parseFilm(json, complate: { (flm) in
                    self.arr.append(flm)
                }, end: {
                    self.customView.tableView.reloadData()
            })
            
            
        }) { (error) in
            
        }
    
    
    }
    // Tableview Delegate and DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell_ListScreen", forIndexPath: indexPath) as! Cell_ListScreen
        cell.layer.backgroundColor = UIColor.clearColor().CGColor
        
        
        cell.star.image = UIImage(named: "star.png")
        
        cell.movieName.text = self.arr[indexPath.row].title
        cell.time.text = self.arr[indexPath.row].duration + " m"
        cell.descriptions.text = self.arr[indexPath.row].description
        cell.score.text = String(self.arr[indexPath.row].predicateScore)
        cell.type.text = self.arr[indexPath.row].type
        cell.director.text = self.arr[indexPath.row].director[0].name
        cell.actors.text = self.arr[indexPath.row].oyuncular[0].name + "," + self.arr[indexPath.row].oyuncular[1].name
        
                
        return cell
    }
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let cCell = cell as! Cell_ListScreen
        cCell.img_Film.sd_setImageWithURL(NSURL(string: self.arr[indexPath.row].poster), placeholderImage: nil, options: SDWebImageOptions.RetryFailed) { (image, err, cache, urk) in
            
        }

    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let destination = Controller_DetailScreen(film: self.arr[indexPath.row]) // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
}

