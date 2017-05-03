//
//  View_DetailScreen.swift
//  MovieProjection
//
//  Created by osx on 5.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setCreateUI(target:Controller_DetailScreen){
        
        self.backgroundColor = UIColor.clearColor()
        
        
        headerView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height/2.2)
        headerView.backgroundColor = UIColor.clearColor()
        
        headerView.addSubview(lbl_filmName)
        lbl_filmName.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(20)
            make.width.equalTo(70)
           // make.height.equalTo(40)
            make.left.equalTo(15)
            //make.centerX.equalTo(headerView)
        }
        lbl_filmName.text = "Film Adı"
        lbl_filmName.textColor = UIColor.yellowColor()
        
        
        headerView.addSubview(lbl_year)
        lbl_year.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(20)
            make.width.equalTo(50)
            make.left.equalTo(90)
        }
        lbl_year.text = "(2017)"
        lbl_year.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(lbl_time)
        lbl_time.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(40)
            make.width.equalTo(70)
            make.left.equalTo(15)
        }
        lbl_time.text = "2s 49dk"
        lbl_time.textColor = UIColor.whiteColor()
        
        
        headerView.addSubview(lbl_type)
        lbl_type.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(40)
            make.left.equalTo(90)
        }
        lbl_type.text = "Macera, Dram"
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
        lbl_score.text = "7.9"
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
        img_video.backgroundColor = UIColor.grayColor()
        
        
        headerView.addSubview(lbl_description)
        lbl_description.snp_makeConstraints{ (make) in
            make.top.equalTo(headerView.snp_top).offset(200)
            make.left.equalTo(15)
        }
        lbl_description.text = "this area is desciption which is about movie"
        lbl_description.textColor = UIColor.whiteColor()
        
        
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
        lbl_directorName.text = "Director Name"
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
        lbl_actorsName.text = "actor 1, actor 2, actor 3"
        lbl_actorsName.textColor = UIColor.whiteColor()
        
        
        tableView.frame = self.frame
        tableView.registerClass(Cell_Actors.self, forCellReuseIdentifier: "Cell_Actors")
        
        tableView.registerClass(Cell_Content.self, forCellReuseIdentifier: "CELL_CONTENT")
        //tableView.rowHeight = self.frame.height/10
        tableView.delegate = target
        tableView.dataSource = target
        tableView.backgroundColor = UIColor.clearColor()
        tableView.tableHeaderView = headerView
        self.addSubview(tableView)

        

        
     
    }
}
