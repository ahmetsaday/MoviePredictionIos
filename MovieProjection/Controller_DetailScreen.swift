//
//  Controller_DetailScreen.swift
//  MovieProjection
//
//  Created by osx on 5.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SDWebImage

class Controller_DetailScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var headerView : View_DetailScreen?
    var flmOBJ = Film()
    
    
    
    init(film:Film){
    
        super.init(nibName: nil, bundle: nil)
        
        
        self.flmOBJ = film
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView = View_DetailScreen(frame: self.view.frame)
        headerView!.setCreateUI(self)
        
        
        self.view.addSubview(headerView!)

        let image = UIImage(named: "star.png")
        headerView?.img_star.image = image
        
        
        
        
        headerView?.lbl_filmName.text = self.flmOBJ.title
        headerView?.lbl_time.text = self.flmOBJ.duration + " m"
        headerView?.lbl_score.text = "\(self.flmOBJ.predicateScore)"
        headerView?.lbl_type.text = self.flmOBJ.type
        headerView?.lbl_year.text = "\(self.flmOBJ.year)"
        headerView?.lbl_actorsName.text = self.flmOBJ.oyuncular[0].name +  "," + self.flmOBJ.oyuncular[1].name + "," + self.flmOBJ.oyuncular[2].name
        headerView?.lbl_directorName.text = self.flmOBJ.director[0].name
        headerView?.lbl_description.text = self.flmOBJ.description
        headerView?.img_photo.sd_setImageWithURL(NSURL(string: self.flmOBJ.poster), placeholderImage: nil, options: SDWebImageOptions.RetryFailed, progress: { (x, y, i) in
            
            }, completed: { (image, err, cache, url) in
                
        })
        
        
    }
    

    // Tableview Delegate
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if(section == 0){
//            
//           // print("sec 1")
//            return 0//aktorlerin
//        }
        
        if(section == 0){
        
           // print("sec 2")
            return self.flmOBJ.oyuncular.count//aktorlerin
            
        }
        
        
        return 0
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       // print("index path", indexPath.section)
        
        
      //  let cell2 = tableView.dequeueReusableCellWithIdentifier("Cell_actor_label", forIndexPath: indexPath) as! Cell_Actor_Label
        
//        if(indexPath.section == 0){
//           //Resim videı kısımı
//            let cell = tableView.dequeueReusableCellWithIdentifier("CELL_CONTENT", forIndexPath: indexPath) as! Cell_Content
//            
//            cell.backgroundColor = UIColor.yellowColor()
//            return cell
//            
//        }
    
        if (indexPath.section == 0){
            //Aktorlerin kısmı
            
            let cell2 = tableView.dequeueReusableCellWithIdentifier("Cell_Actors", forIndexPath: indexPath) as! Cell_Actors
            cell2.lbl_actor.text = self.flmOBJ.oyuncular[indexPath.row].name
            cell2.lbl_role.text = self.flmOBJ.oyuncular[indexPath.row].karakter
            cell2.img_h.sd_setImageWithURL(NSURL(string: self.flmOBJ.oyuncular[indexPath.row].image), placeholderImage: nil, completed: { (image, err, cache, urk) in
                
            })
            
            cell2.backgroundColor = UIColor.clearColor()
            return cell2
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     
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
        
//        if(section == 1){
//            vw.backgroundColor = UIColor.hexColor(0x000000, alpha: 0.5)
//            colon1.text = "Videolar"
//            colon2.text = "Fotoğraflar"
//            
//        }
        if(section == 0){
            vw.backgroundColor = UIColor.hexColor(0x000000, alpha: 0.5)
            colon1.text = "Oyuncular"
            colon2.text = "Karakter"
        }
        
        return vw
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
//        if (indexPath.section == 0) {
//            return 150
//        }else 
        if(indexPath.section == 0){
            return 60
        }
        return 0
    }
    
    
}
