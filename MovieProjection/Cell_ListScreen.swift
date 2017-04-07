//
//  Cell_ListScreen.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_ListScreen: UITableViewCell {
    
    var img_Film = UIImageView()
    var movieName = UILabel()
    var date = UILabel()
    var time = UILabel()
    var type = UILabel()
    var score = UILabel()
    var star = UIImageView()
    var director = UILabel()
    var actors = UILabel()
    var descriptions = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        setCreateUI()
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateUI(){
        
        
        
        self.addSubview(img_Film)
        img_Film.snp_makeConstraints{ (make) in
            make.width.equalTo(70)
            make.height.equalTo(100)
            make.top.equalTo(self.snp_top).offset(15)
            make.left.equalTo(self.snp_left).offset(20)
            
        }
        img_Film.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(movieName)
        movieName.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(15)
            make.left.equalTo(self.snp_left).offset(110)
        }
        movieName.text = "Film Adı"
        movieName.textColor = UIColor.yellowColor()
        movieName.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(date)
        date.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(15)
            make.left.equalTo(self.snp_left).offset(180)
        }
        date.text = "(2017)"
        date.textColor = UIColor.grayColor()
        //date.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(time)
        time.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(37)
            make.left.equalTo(self.snp_left).offset(110)
        }
        time.text = "2s 49dk"
        time.textColor = UIColor.grayColor()
        //time.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(type)
        type.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(37)
            make.left.equalTo(self.snp_left).offset(180)
        }
        type.text = "Macera, Bilim Kurgu"
        type.textColor = UIColor.grayColor()
        //type.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(score)
        score.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(15)
            make.right.equalTo(self.snp_right).offset(-20)
        }
        score.text = "7.9"
        score.textColor = UIColor.grayColor()
        //score.backgroundColor = UIColor.grayColor()
        
        self.addSubview(star)
        star.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(15)
            make.right.equalTo(self.snp_right).offset(-45)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        star.backgroundColor = UIColor.yellowColor()
        //star.image = UIImage(named:"star.png") Start ekleyemedim.
        
        
        self.addSubview(director)
        director.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(58)
            make.left.equalTo(self.snp_left).offset(110)
        }
        director.text = "director name"
        director.textColor = UIColor.grayColor()
        //director.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(actors)
        actors.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(78)
            make.left.equalTo(self.snp_left).offset(110)
        }
        actors.text = "Actor Name, Actor Name..."
        actors.textColor = UIColor.grayColor()
        //actors.backgroundColor = UIColor.grayColor()
        
        
        self.addSubview(descriptions)
        descriptions.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(100)
            make.left.equalTo(self.snp_left).offset(110)
        }
        descriptions.text = "descriptions of Movie..."
        descriptions.textColor = UIColor.grayColor()
        //descriptions.backgroundColor = UIColor.grayColor()


        
       // self.backgroundColor = UIColor.whiteColor()
        
        self.contentView.setNeedsLayout()
        self.contentView.setNeedsDisplay()
        self.contentView.layoutIfNeeded()

    }
}











