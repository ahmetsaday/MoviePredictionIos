//
//  Cell_Header.swift
//  MovieProjection
//
//  Created by osx on 7.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Actors: UITableViewCell {
    
    
    var lbl_actor = UILabel()
    var lbl_role = UILabel()
    var img_h = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        setCreateHeaderUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateHeaderUI(){
        
        self.addSubview(img_h)
        img_h.snp_makeConstraints { (make) in
            make.size.equalTo(50)
            make.left.equalTo(self).offset(15)
            
        }
        img_h.layer.masksToBounds = true
        img_h.layer.cornerRadius = 25
        img_h.backgroundColor = UIColor.blackColor()
        img_h.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(lbl_actor)
        lbl_actor.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.img_h.snp_right).offset(10)
        }
        lbl_actor.text = "Actor Name"
        lbl_actor.textColor = UIColor.whiteColor()
        
        
        self.addSubview(lbl_role)
        lbl_role.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.lbl_actor.snp_right).offset(10)
            make.right.equalTo(self).offset(-5)
        }
        lbl_role.textAlignment = NSTextAlignment.Right
        lbl_role.textColor = UIColor.whiteColor()
        
        
        self.contentView.setNeedsLayout()
        self.contentView.setNeedsDisplay()
        self.contentView.layoutIfNeeded()
    }
}
