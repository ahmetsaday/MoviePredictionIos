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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        setCreateHeaderUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateHeaderUI(){
        
        
        
        self.addSubview(lbl_actor)
        lbl_actor.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.snp_left).offset(20)
        }
        lbl_actor.text = "Actor Name"
        
        
        self.addSubview(lbl_role)
        lbl_role.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.snp_left).offset(200)
        }
        lbl_role.text = "Role Name"
        
        
        self.contentView.setNeedsLayout()
        self.contentView.setNeedsDisplay()
        self.contentView.layoutIfNeeded()
    }
}
