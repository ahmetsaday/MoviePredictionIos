//
//  View_DetailScreen.swift
//  MovieProjection
//
//  Created by osx on 5.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit
import FlatColor

class View_DetailScreen: UIView{
    
    
    var tableView = UITableView()
    
    var headerView = UIView()
    var lbl_filmName = UILabel()
    var lbl_year = UILabel()
    var lbl_time = UILabel()
    var lbl_type = UILabel()
    var img_star = UIImageView()
    var lbl_score = UILabel()
    var img_photo = UIImageView()
    var img_video = UIImageView()
    var lbl_description = UILabel()
    var lbl_director = UILabel()
    var lbl_directorName = UILabel()
    var lbl_actors = UILabel()
    var lbl_actorsName = UILabel()
    var img_Back = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setCreateUI(target:Controller_DetailScreen){
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.addSubview(img_Back)
        img_Back.snp_makeConstraints { (make) in
            make.size.equalTo(self)
            make.center.equalTo(self)
        }
        img_Back.image = UIImage(named:"arkaplan.jpg")
        
        
        
        headerView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height/2.2)
        headerView.backgroundColor = UIColor.clearColor()
        
        headerView.addSubview(lbl_filmName)
        lbl_filmName.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(10)
            make.right.equalTo(headerView).offset(-90)
            make.left.equalTo(15)
        }
        
        lbl_filmName.textColor = UIColor.yellowColor()
        
        
        headerView.addSubview(lbl_year)
        lbl_year.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(10)
            make.width.equalTo(50)
            make.right.equalTo(-10)
        }
        
        lbl_year.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(lbl_time)
        lbl_time.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(40)
            make.width.equalTo(70)
            make.left.equalTo(15)
        }
        
        lbl_time.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(lbl_type)
        lbl_type.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(40)
            make.left.equalTo(90)
        }
        
        lbl_type.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(img_star)
        img_star.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(30)
            make.right.equalTo(-40)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        
        headerView.addSubview(lbl_score)
        lbl_score.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(30)
            make.right.equalTo(-10)
        }
        
        lbl_score.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(img_photo)
        img_photo.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(70)
            make.left.equalTo(15)
            make.width.equalTo(90)
            make.height.equalTo(120)
        }
        img_photo.backgroundColor = UIColor.grayColor()
        
        
        headerView.addSubview(img_video)
        img_video.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(70)
            make.right.equalTo(-15)
            make.width.equalTo(250)
            make.height.equalTo(120)
        }
        img_video.backgroundColor = UIColor.clearColor()
        
        
        headerView.addSubview(lbl_description)
        lbl_description.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(200)
            make.left.equalTo(15)
        }
        
        lbl_description.textColor = UIColor.whiteColor()
        lbl_description.numberOfLines = 2
        
        
        headerView.addSubview(lbl_director)
        lbl_director.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(235)
            make.left.equalTo(15)
        }
        lbl_director.text = "Yönetmen"
        lbl_director.textColor = UIColor.yellowColor()
        
        
        headerView.addSubview(lbl_directorName)
        lbl_directorName.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(235)
            make.left.equalTo(120)
        }
        lbl_directorName.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(lbl_actors)
        lbl_actors.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(265)
            make.left.equalTo(15)
        }
        lbl_actors.text = "Oyuncular"
        lbl_actors.textColor = UIColor.yellowColor()
        
        
        headerView.addSubview(lbl_actorsName)
        lbl_actorsName.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(265)
            make.left.equalTo(120)
        }
        lbl_actorsName.numberOfLines = 2
        lbl_actorsName.textColor = UIColor.whiteColor()
        
        
        self.addSubview(tableView)
        tableView.snp_makeConstraints { (make) in
            make.top.equalTo(self).offset(64)
            make.bottom.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.center.equalTo(self)
        }
        tableView.registerClass(Cell_Actors.self, forCellReuseIdentifier: "Cell_Actors")
        tableView.registerClass(Cell_Content.self, forCellReuseIdentifier: "CELL_CONTENT")
        //tableView.rowHeight = self.frame.height/10
        tableView.delegate = target
        tableView.dataSource = target
        tableView.backgroundColor = UIColor.hexColor(0x000000, alpha: 0.9)
        tableView.tableHeaderView = headerView
        self.addSubview(tableView)

        

        
     
    }
}
