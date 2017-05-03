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
        headerView?.backgroundColor = UIColor.clearColor()
        self.view.addSubview(headerView!)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"arkaplan.jpg")!).colorWithAlphaComponent(0.30)
        
        let image = UIImage(named: "star.png")
        headerView?.img_star.image = image
        
        
    }
    

    // Tableview Delegate
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            
           // print("sec 1")
            return 1//resim video kısımı
        }
        
        if(section == 1){
        
           // print("sec 2")
            return 10//aktorlerin
            
        }
        
        
        return 0
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       // print("index path", indexPath.section)
        
        
      //  let cell2 = tableView.dequeueReusableCellWithIdentifier("Cell_actor_label", forIndexPath: indexPath) as! Cell_Actor_Label
        
        if(indexPath.section == 0){
           //Resim videı kısımı
            let cell = tableView.dequeueReusableCellWithIdentifier("CELL_CONTENT", forIndexPath: indexPath) as! Cell_Content
            
            cell.backgroundColor = UIColor.yellowColor()
            return cell
            
        }
    
        if (indexPath.section == 1){
            //Aktorlerin kısmı
            
            let cell2 = tableView.dequeueReusableCellWithIdentifier("Cell_Actors", forIndexPath: indexPath) as! Cell_Actors
            cell2.backgroundColor = UIColor.clearColor()
            return cell2
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let destination = Controller_DetailScreen() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 64
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 64))
        
        let colon1 = UILabel(frame: CGRect(x: 20, y: 10, width: 200, height: 50))
        colon1.textColor = UIColor.yellowColor()
        vw.addSubview(colon1)
        
        let colon2 = UILabel(frame: CGRect(x: 250, y: 10, width: 200, height: 50))
        colon2.textColor = UIColor.yellowColor()
        vw.addSubview(colon2)
        
        if(section == 0){
            vw.backgroundColor = UIColor.clearColor()
            colon1.text = "Videolar"
            colon2.text = "Fotoğraflar"
            
        }
        if(section == 1){
            vw.backgroundColor = UIColor.clearColor()
            colon1.text = "Oyuncular"
            colon2.text = "Roller"
        }
        
        return vw
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        if (indexPath.section == 0) {
            return 150
        }else if(indexPath.section == 1){
            return 60
        }
        return 0
    }
    
    
}
